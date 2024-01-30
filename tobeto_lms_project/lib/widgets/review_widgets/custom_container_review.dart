import 'package:flutter/material.dart';

class CustomContainerReview extends StatelessWidget {
  const CustomContainerReview(
      {Key? key, required this.body, required this.backgroundColor})
      : super(key: key);
  final Widget body;
  final double borderRadius = 20;

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [backgroundColor.withOpacity(0.2), backgroundColor],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        color: backgroundColor,
        border: Border.all(),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(borderRadius),
          bottomRight: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
      ),
      child: body,
    );
  }
}
