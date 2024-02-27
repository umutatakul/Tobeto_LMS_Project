import 'package:flutter/material.dart';

class HeaderFieldHome extends StatelessWidget {
  const HeaderFieldHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              text: 'TOBETO',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.purple),
              children: [
                TextSpan(
                  text: "'ya hoşgeldin ",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          Text(
            "Alınan İsim!",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          // Text(
          //   "Yeni nesil öğrenme deneyimi ile Tobeto kariyer yolculuğunda senin yanında!",
          //   style: Theme.of(context).textTheme.titleLarge,
          //   textAlign: TextAlign.center,
          // )
        ],
      ),
    );

    // Text("ReviewScreenStirngs.titleOne",
    //     style: Theme.of(context).textTheme.displayMedium,
    //     textAlign: TextAlign.center);
    // Container(
    //   padding: const EdgeInsets.only(
    //     top: 5,
    //   ),
    //   decoration: BoxDecoration(
    //     gradient: LinearGradient(
    //       colors: [Colors.grey[200]!, Colors.grey[300]!],
    //       begin: Alignment.topCenter,
    //       end: Alignment.bottomCenter,
    //     ),
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   child: Column(
    //     children: [
    //       RichText(
    //         text: const TextSpan(
    //           text: 'TOBETO',
    //           style: TextStyle(
    //             fontSize: 18,
    //             fontWeight: FontWeight.bold,
    //             color: Colors.purple,
    //           ),
    //           children: [
    //             TextSpan(
    //               text: "'ya hoşgeldin \n Alınan İsim!",
    //               style: TextStyle(
    //                 fontSize: 18,
    //                 color: Colors.black,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       const SizedBox(height: 16),
    //       const Center(
    //         child: Text(
    //           "Yeni nesil öğrenme deneyimi ile Tobeto kariyer yolculuğunda senin yanında!",
    //           style: TextStyle(
    //             fontSize: 16,
    //           ),
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
