import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../controllers/on_boarding_controller/on_boarding_controller.dart';

class OnBoarding extends StatelessWidget {
   const OnBoarding({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {

    final obcontroller = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
            LiquidSwipe(
              onPageChangeCallback: obcontroller.onPageChangeCallback,
              liquidController: obcontroller.controller,
              pages: obcontroller.Pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            ),
          Positioned(
              bottom: 60,
              child: OutlinedButton(onPressed: () => obcontroller.animateToNextSlide(),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    onPrimary: Colors.white,
                  ),
                  child: Container(
                     padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff272727)
                      ),
                      child: const Icon(Icons.arrow_forward_ios)))),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () => obcontroller.skip(),
                child: const Text('Skip', style: TextStyle(color: Colors.grey),),
              )),
          Obx(
              () => Positioned(
              bottom: 20,
                child: AnimatedSmoothIndicator(
                    activeIndex: obcontroller.currentPage.value,
                    effect: const WormEffect(
                      activeDotColor: Color(0xff272727),
                      dotHeight: 5,
                      spacing: 7,
                    ),
                    count: 3)),
          )
        ],
      ),
    );
  }


}

