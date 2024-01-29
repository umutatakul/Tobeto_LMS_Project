import 'package:flutter/material.dart';

class FooterFieldProfile extends StatelessWidget {
  const FooterFieldProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Theme.of(context).colorScheme.inversePrimary,
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
            onTap: () => print("Mesaj ikonuna tıklandı"),
            child: const CircleAvatar(
              radius: 30,
              //TODO AnimatedICon ekle
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
