import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/constants/strings/profile_screen_strings.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/screens/custom_animated_background_body.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/about_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/birthdate_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/certificates_field_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/footer_field_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/language_field_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/mail_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/media_acount_field.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/name_surname_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/phone_number_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/skills_field_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/succes_model_profile_field.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);
  //final cardMainInformation = CardMainInformation();
  final mockDataFirstCard = ProfileInformationData();
  final List skillsList = ProfileInformationData().skills;
  final List languageList = ProfileInformationData().languages;
  final profileStrings = ProfileScreenStrings();
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.profileStrings.myProfile),
        ),
        drawer: CustomDrawer(),
        body: CustomAnimatedBackgroundBody(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //TODO Buraya kaydetme ve paylaşam özelliği ekle
                        Icon(Icons.share),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(FontAwesomeIcons.penToSquare),
                        //TODO Düzenleme sayfası yarat
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
                  AboutCardProfile(
                      title: widget.profileStrings.about,
                      informationText: "Metin bla bla bla"),
                  SkillsFieldProfile(
                    title: widget.profileStrings.mySkills,
                    skillDataList: widget.skillsList,
                  ),
                  LanguageFieldProfile(
                    title: widget.profileStrings.languages,
                    languageDataList: widget.languageList,
                  ),
                  const CertificatesFieldProfile(),
                  MediaAccountField(
                    title: widget.profileStrings.socialMediaAccounts,
                  ),
                  SuccesModelProfileField(
                      title: widget.profileStrings.tobetoSuccesModel),

                  //Tobeto Sviye Testleri ekleencek
                  //Yetkinlik Rozetlerim ekleencek
                  //Aktivite Haritam ekelencek
                  //Eğitim hayatım ve deneyimler
                  //Footer yarat
                  FooterFieldProfile(),
                ],
              ),
            ),
          ),
        ));
  }
}
