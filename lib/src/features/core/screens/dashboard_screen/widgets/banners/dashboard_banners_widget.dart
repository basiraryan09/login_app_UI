import 'package:flutter/material.dart';

import '../../../../../../constants/colors.dart';
import '../../../../../../constants/images.dart';
import '../../../../../../constants/size.dar.dart';
import '../../../../../../constants/text.dart';

class DashBoardBanners extends StatelessWidget {
  const DashBoardBanners({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: appCardBgColor,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child:   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: Image(image: AssetImage(appBookMarkImg2),height: 30,)),
                    Flexible(child: Image(image: AssetImage(appArtBook), height: 50, width: 60,)),
                  ],
                ),
                const SizedBox(height: 25,),
                Text(appDashBoardBannerTitle1, style: textTheme.headline4, maxLines: 2, overflow: TextOverflow.ellipsis,),
                Text(appDashBoardBannerSubTitle, style: textTheme.bodyText2, overflow: TextOverflow.ellipsis, maxLines: 1,),
              ],
            ),
          ),
        ),
        const SizedBox(width: appDashBoardPadding,),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: appCardBgColor,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child:   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Image(image: AssetImage(appBookMarkImg2),height: 30,)),
                        Flexible(child: Image(image: AssetImage(appPaintBoardImg), height: 50, width: 60,)),
                      ],
                    ),
                    Text(appDashBoardBannerTitle2, style: textTheme.headline4, overflow: TextOverflow.ellipsis,),
                    Text(appDashBoardBannerSubTitle, style: textTheme.bodyText2, overflow: TextOverflow.ellipsis,),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ))
                      ),
                      onPressed: (){}, child: const Text(appDashBoardButton)))
            ],
          ),),
      ],
    );
  }
}
