import 'package:flutter/material.dart';

import '../../../../../../constants/colors.dart';
import '../../../../../../constants/images.dart';
import '../../../../../../constants/size.dar.dart';
import '../../../../models/dashboard/top_courses_model.dart';

class DashBoardTopCoursesCardWidget extends StatelessWidget {
   DashBoardTopCoursesCardWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;
final list = TopCoursesModel.list;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemBuilder: (context, index) => SizedBox(
          height: 200,
          width: 320,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: appCardBgColor,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child: Text(list[index].title
                            ,style: textTheme.headline4,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,)),
                       Image(image: AssetImage(list[index].image), height: 110, width: 150,)
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder()
                        ),
                        child: const Icon(Icons.play_arrow),
                      ),
                      const SizedBox(height: appDashBoardPadding + 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(list[index].heading, style: textTheme.headline4, overflow: TextOverflow.ellipsis,),
                          Text(list[index].subHeading, style: textTheme.bodyText2, overflow: TextOverflow.ellipsis,),
                        ],
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
        itemCount: list.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}