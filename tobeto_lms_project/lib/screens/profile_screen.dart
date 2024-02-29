import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc_event.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc_state.dart';
import 'package:tobeto_lms_project/constants/strings/profile_screen_strings.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/models/user_model.dart';
import 'package:tobeto_lms_project/screens/custom_animated_background_body.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen.dart';
import 'package:tobeto_lms_project/widgets/custom_bottom_navigation_bar.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/about_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/activitiy_field_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/badges_field_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/birthdate_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/certificates_field_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/experiences_field.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/footer_field_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/language_field_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/level_test_results_field.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/mail_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/media_acount_field.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/name_surname_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/phone_number_card_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/picture_field_profile.dart';
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
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is ProfileInitial) {
              context.read<ProfileBloc>().add(GetProfileEvent());
            }
            if (state is ProfileLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is ProfileLoaded) {
              UserModel user = state.user;
              return Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                //TODO Buraya kaydetme ve paylaşma özelliği ekle
                                //Paylaşmak için uygun kütüphane bulamadım
                                //screenshot ve share_plus denedim share plus paketi ile crash oldu
                                /*Icon(Icons.share),
                            SizedBox(
                              width: 20,
                            ),
                            */
                                //FontAwesomeIcons.penToSquare
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            ProfileEditScreen(),
                                      ));
                                    },
                                    icon: const Icon(
                                        FontAwesomeIcons.penToSquare)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //----------------------PICTURE FIELD---------------------------
                      PictureFieldProfile(),
                      NameSurnameCardProfile(
                        name: user.name ?? "",
                        surname: widget.mockDataFirstCard.surname,
                      ),
                      BirthdateCardProfile(
                          birthdate: widget.mockDataFirstCard.birthdate),
                      MailCardProfile(mail: user.email!),
                      PhoneNumberCardProfile(telephone: user.phone ?? ""),
                      AboutCardProfile(
                          title: widget.profileStrings.about,
                          informationText: user.about ?? ""),
                      SkillsFieldProfile(
                        title: widget.profileStrings.mySkills,
                        skillDataList: widget.skillsList,
                      ),
                      //-------------------Dil Profili------------------
                      LanguageFieldProfile(
                        title: widget.profileStrings.languages,
                        languageDataList: widget.languageList,
                      ),
                      const CertificatesFieldProfile(),
                      MediaAcountField(
                          title: widget.profileStrings.socialMediaAccounts),
                      SuccesModelProfileField(
                          title: widget.profileStrings.tobetoSuccesModel),
                      LevelTestResultsField(),
                      BadgesFieldProfile(),
                      const ActivitiyFieldProfile(),
                      const ExperiencesField(),
                      FooterFieldProfile(
                        backgroundColors:
                            Theme.of(context).colorScheme.inversePrimary,
                      )
                    ],
                  ),
                ),
              );
            }
            if (state is ProfileError) {
              return Center(
                child: Text(state.errorMessage),
              );
            }
            return Container(
              child: Text("Allaha emanet"),
            );
          },
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
