import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget
    //AppBar return edeceğimiz için bunu istedi
    implements
        PreferredSizeWidget {
  const CustomAppBarWidget({Key? key, required this.appBarTitle})
      : super(key: key);
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appBarTitle),
      // titleTextStyle: Theme.of(context)
      //     .textTheme
      //     .headlineMedium!
      //     .copyWith(color: Theme.of(context).colorScheme.onTertiary),
      centerTitle: true,
    );
  }

  //PreferredSizeWidget eklediğimiz içinde bunu zorunlu kıldı
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
