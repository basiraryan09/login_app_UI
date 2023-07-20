

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/size.dar.dart';
import '../../models/model_on_boarding/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding:  const EdgeInsets.all(appDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image),height: size.height * 0.5,),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.headline5,),
              Text(model.subTitle, textAlign: TextAlign.center, style: Theme.of(context).textTheme.subtitle2,),
            ],
          ),
          Text(model.counterText,style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 80)
        ],
      ),);
  }
}
