import 'package:flutter/material.dart';

import '../../../../../../constants/colors.dart';
import '../../../../models/dashboard/categories_model.dart';

class DashBoardCategories extends StatelessWidget {
  const DashBoardCategories({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashBoardCategoriesModel.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 45,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: appDarkColor,
                  ),
                  child: Center(
                    child: Text(list[index].title, style: textTheme.headline6?.apply(color: Colors.white),),
                  ),
                ),
                const SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(list[index].heading, style: textTheme.headline6, overflow: TextOverflow.ellipsis,),
                      Text(list[index].subHeading, style: textTheme.bodyText2, overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,

          // SizedBox(
          //   width: 170,
          //   height: 45,
          //   child: Row(
          //     children: [
          //       Container(
          //         width: 45,
          //         height: 45,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: appDarkColor,
          //         ),
          //         child: Center(
          //           child: Text('JS', style: textTheme.headline6?.apply(color: Colors.white),),
          //         ),
          //       ),
          //       const SizedBox(width: 5,),
          //       Flexible(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text('Java Script', style: textTheme.headline6, overflow: TextOverflow.ellipsis,),
          //             Text('10 Lessons', style: textTheme.bodyText2, overflow: TextOverflow.ellipsis,),
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   width: 170,
          //   height: 45,
          //   child: Row(
          //     children: [
          //       Container(
          //         width: 45,
          //         height: 45,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: appDarkColor,
          //         ),
          //         child: Center(
          //           child: Text('JS', style: textTheme.headline6?.apply(color: Colors.white),),
          //         ),
          //       ),
          //       const SizedBox(width: 5,),
          //       Flexible(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text('Java Script', style: textTheme.headline6, overflow: TextOverflow.ellipsis,),
          //             Text('10 Lessons', style: textTheme.bodyText2, overflow: TextOverflow.ellipsis,),
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
      ),
    );
  }
}