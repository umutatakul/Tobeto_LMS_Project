import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/paths/paths_of_profile.dart';

class CustomAnimatedBackgroundBody extends StatefulWidget {
  const CustomAnimatedBackgroundBody({Key? key, required this.body})
      : super(key: key);
  final Widget body;

  @override
  _CustomAnimatedBackgroundBodyState createState() =>
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
            spawnMinSpeed: 10.00,
            particleCount: 68,
            spawnMaxSpeed: 50,
            minOpacity: 0.3,
            spawnOpacity: 0.4,
            baseColor: Colors.purple,
            //SvgPicture.asset(LoginAssets().namedLogoPath)
            image: Image(
              image: NetworkImage(ProfileAssets().animatedParticleLink),
            ),
          ),
        ),

        //vsync: this,
        vsync: this,
        child: widget.body);
  }
}
