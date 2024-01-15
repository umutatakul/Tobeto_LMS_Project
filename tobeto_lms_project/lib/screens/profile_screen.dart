import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/constants/paths/paths_of_profile.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/about_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/birthdate_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/mail_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/name_surname_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/phone_number_card_profile.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);
  //final cardMainInformation = CardMainInformation();
  final mockDataFirstCard = ProfileInformationData();

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profilim"),
      ),
      body: AnimatedBackground(
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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.share),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(FontAwesomeIcons.penToSquare),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400.withOpacity(0.5),
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue.shade400,
                      child: Image.network(
                        widget.mockDataFirstCard.profilePictureLink,
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      // foregroundImage: NetworkImage(
                      //     "https://pbs.twimg.com/profile_images/1681954178195652609/H44jVFCp_400x400.jpg"),
                    ),
                  ),
                ),
                NameSurnameCardProfile(
                  name: widget.mockDataFirstCard.name,
                  surname: widget.mockDataFirstCard.surname,
                ),
                BirthdateCardProfile(
                    birthdate: widget.mockDataFirstCard.birthdate),
                MailCardProfile(mail: widget.mockDataFirstCard.mail),
                PhoneNumberCardProfile(
                    telephone: widget.mockDataFirstCard.phoneNumber),
                const AboutCardProfile(
                    title: "Hakkında", informationText: "Metin bla bla bla"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
