import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/paths/paths_of_profile.dart';

class CustomAnimatedBackgroundBody extends StatefulWidget {
  CustomAnimatedBackgroundBody({Key? key, required this.body})
      : super(key: key);
  final Widget body;
  final String animatedParticleLink = ProfileAssets().animatedParticleLink;

  @override
  State<CustomAnimatedBackgroundBody> createState() =>
      _CustomAnimatedBackgroundBodyState();
}

class _CustomAnimatedBackgroundBodyState
    extends State<CustomAnimatedBackgroundBody> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: ParticleOptions(
            spawnMaxRadius: 50,
            spawnMinSpeed: 5.00,
            particleCount: 68,
            spawnMaxSpeed: 10,
            minOpacity: 0.3,
            spawnOpacity: 0.4,
            //Animasyondaki parçacıkların renigin burdan veriyoruz.

            //Bunu temaya bağlı olarak dinamik olarak verdik.
            baseColor: Theme.of(context).colorScheme.inversePrimary,
            //Arka plandaki, animasyondaki parçacıkları resim olarak seçebilirsiniz
            // image: Image(
            //   image: NetworkImage(widget.animatedParticleLink),
            // ),
          ),
        ),

        //vsync: this,
        vsync: this,
        //backgroudn'un sütüne alıancak body'yi burda çağırıyoruz.
        child: widget.body);
  }
}
