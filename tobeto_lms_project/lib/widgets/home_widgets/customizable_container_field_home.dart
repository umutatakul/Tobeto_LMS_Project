import 'package:flutter/material.dart';

class CustomizableContainerFieldHome extends StatelessWidget {
  const CustomizableContainerFieldHome({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white),
              ),
              const Icon(
                Icons.arrow_circle_right,
                size: 30,
              )
            ],
          )),
    );
  }
}





    //-------------İKİNCİ TASARIM-------------------
    // Container(
    //     width: double.infinity,
    //     padding: const EdgeInsets.only(right: 60, left: 12, bottom: 20),
    //     margin: const EdgeInsets.all(12),
    //     height: MediaQuery.of(context).size.height * 0.2,
    //     decoration: BoxDecoration(
    //         color: Theme.of(context).primaryColorDark,
    //         borderRadius: const BorderRadius.only(
    //           topRight: Radius.circular(30),
    //           bottomLeft: Radius.circular(30),
    //           bottomRight: Radius.circular(30),
    //         )),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Text(
    //           title,
    //           style: Theme.of(context).textTheme.displaySmall,
    //         ),
    //         IconButton(
    //             onPressed: () {},
    //             icon: Icon(
    //               Icons.arrow_circle_right_rounded,
    //               size: 100,
    //               color: Theme.of(context).colorScheme.onSecondary,
    //             ))
    //       ],
    //     )
    //--------İLK TASARIM---------------------------
        //  Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Text(
        //       title,
        //       style: Theme.of(context)
        //           .textTheme
        //           .headlineLarge!
        //           .copyWith(fontWeight: FontWeight.bold),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {},
        //       child: Container(
        //         width: double.infinity,
        //         child: const Text(
        //           "Başla",
        //           textAlign: TextAlign.center,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),