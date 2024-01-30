import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget
    //AppBar retun edeceğimiz için bunu istedi
    implements
        PreferredSizeWidget {
  const CustomAppBarWidget({Key? key, required this.appBarTitle})
      : super(key: key);
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: Text(appBarTitle)),
    );
  }

  //PreferredSizeWidget eklediğimiz içinde bunu zorunlu kıldı
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
