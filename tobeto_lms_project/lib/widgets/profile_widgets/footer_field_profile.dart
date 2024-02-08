import 'package:flutter/material.dart';

//TODO google maps ekle
//Whatapp erişimi oluştur
//https://stackoverflow.com/questions/60947937/flutter-open-whatsapp-with-text-message
//

class FooterFieldProfile extends StatelessWidget {
  const FooterFieldProfile({Key? key, required this.backgroundColors})
      : super(key: key);
  final Color? backgroundColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: backgroundColors ?? Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Bize ulaşın",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onInverseSurface),
              ),
              Text("c 2022 Texto yazısı",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onInverseSurface))
            ],
          ),
          InkWell(
            onTap: () {},
            child: const CircleAvatar(
              radius: 30,
              //TODO AnimatedIcon ekle
              child: Icon(
                Icons.message_outlined,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
    // Column(
    //   children: [
    //     Row(
    //       children: [Text("Tobeto"), Text("Bize ulaşın butonu")],
    //     ),
    //     Text("c 2022 Texto yazısı")
    //   ],
    // );
  }
}
