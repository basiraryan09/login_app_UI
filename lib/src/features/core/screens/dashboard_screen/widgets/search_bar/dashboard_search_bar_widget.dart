import 'package:flutter/material.dart';

import '../../../../../../constants/text.dart';

class DashBoardSearchBar extends StatelessWidget {
  const DashBoardSearchBar({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5 ),
      decoration: const BoxDecoration(
        border: Border(left: BorderSide(width: 4),),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(appDashBoardSearch, style: textTheme.headline2?.apply(color: Colors.grey.withOpacity(0.5)),),
          const Icon(Icons.mic, size: 25,)
        ],
      ),
    );
  }
}