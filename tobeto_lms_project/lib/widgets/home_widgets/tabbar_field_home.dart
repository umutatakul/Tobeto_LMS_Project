import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/screens/my_educations_screen.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/certificates_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/education_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/experiences_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/individual_information_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/skills_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/social_media_accounts_tab.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/announce_tabbar_field_home.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/education_card_home.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/tabbar_views/tabbar_applications_view.dart';

class TabbarFieldHome extends StatelessWidget {
  const TabbarFieldHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //------------İSTANBUL KODLUYOR RESMİ-------------------

        Container(
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(
                5,
              )),
          child: const Image(
            image: Svg(
              'https://istanbulkodluyor.com/_next/static/media/ik-logo-light-sm.8412685f.svg',
              source: SvgSource.network,
            ),
          ),
        ),
        //----------- TABBAR FIELD CARD ------------------
        Card(
          margin: const EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),

                // ---------------TAB BAR ÜSTÜ (IKINCI) TEXT---------
                Text(
                  "Ücretsiz eğitimlerle, geleceğin mesleklerinde sen de yerini al.",
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "Aradığın ",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: "\"",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color: const Color.fromRGBO(0, 210, 155, 1),
                                    fontWeight: FontWeight.bold,
                                  )),
                          TextSpan(
                              text: "İş",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "\"",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color:
                                          const Color.fromRGBO(0, 210, 155, 1),
                                      fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "Burada",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.bold)),
                        ]),
                  ),
                ),
                const SizedBox(height: 16),
                // --------------TAB GÖRÜNÜMLERİ--------
                Container(
                  child: DefaultTabController(
                    length: 4,
                    // TODO neden column kullandığını Furkana sor.
                    child: Column(
                      children: [
                        //-----TABBAR ICONLARI--------
                        const TabBar(
                          tabs: [
                            Tab(
                              child: Icon(
                                Icons.fact_check_outlined,
                                size: 50,
                              ),
                            ),
                            Tab(
                              child: Icon(
                                Icons.play_lesson_outlined,
                                size: 50,
                              ),
                            ),
                            Tab(
                              child: Icon(
                                Icons.campaign_outlined,
                                size: 50,
                              ),
                            ),
                            Tab(
                              child: FaIcon(
                                FontAwesomeIcons.personBooth,
                                size: 40,
                              ),
                            ),
                            // SizedBox(
                            //   width: 120,
                            //   child: Tab(text: "Başvurularım"),
                            // ),
                            // SizedBox(
                            //   width: 120,
                            //   child: Tab(text: "Eğitimlerim"),
                            // ),
                            // SizedBox(
                            //   width: 120,
                            //   child: Tab(text: "Duyurularım"),
                            // ),
                            // SizedBox(
                            //   width: 120,
                            //   child: Tab(text: "Anketlerim"),
                            // ),
                          ],
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.purple,
                        ),
                        const SizedBox(height: 8),
                        //---------------TAB BAR GÖRünümü BURASI
                        Container(
                          // Dinamik tabbar uzunluğu için
                          //https://stackoverflow.com/questions/54642710/tabbarview-with-dynamic-container-height
                          child: AutoScaleTabBarView(
                            children: [
                              //--------BAŞVURULARIM GÖRÜNÜMÜ_______________
                              Center(
                                child: Column(
                                  children: [
                                    Text(
                                      //Başvurularım başlığı
                                      "Başvurularım",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                    ),
                                    const TabbarApplicationsView()
                                  ],
                                ),
                              ),

                              //----------- Eğitimlerim Bölümü
                              Column(
                                children: [
                                  // Başlık
                                  Center(
                                      child: Text(
                                    "Eğitimlerim",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  )),
                                  EducationCardHome(),
                                  //Daha fazlasını görmek için tıklayın buttonu
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: OutlinedButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                const MyEducationsScreen(),
                                          ));
                                        },
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            "Tüm Eğitimlerinizi Görmek İçin Tıklayın",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                            textAlign: TextAlign.center,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                              //----Duyurularım Görünüm Bölümü
                              Column(
                                children: [
                                  Center(
                                      child: Text(
                                    "Duyurularım",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  )),
                                  const AnnounceTabbarFieldHome(),
                                ],
                              ),
                              // Anketler bölümü
                              Column(
                                children: [
                                  Center(
                                      child: Text(
                                    "Anketlerim ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  )),
                                  Image.asset(
                                      "assets/images/empty_survey_home.png"),
                                  Text(
                                    "Atanmış herhangi bir anketiniz bulunmamaktadır",
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ---------------Eski görünüm---------------------

// Card(
//               margin: const EdgeInsets.all(16),
//               elevation: 4,
//               color: Colors.grey[200],
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: const Padding(
//                 padding: EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "İstanbul Kodluyor",
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 8),
//                     Text(
//                       "Ücretsiz eğitimlerle, geleceğin mesleklerinde sen de yerini al.",
//                       style: TextStyle(fontSize: 16),
//                     ),
//                     SizedBox(height: 8),
//                     Text(
//                       "Aradığın \"iş\" burada!",
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 16),
//                     DefaultTabController(
//                       length: 4,
//                       child: Column(
//                         children: [
//                           TabBar(
//                             tabs: [
//                               SizedBox(
//                                 width: 120,
//                                 child: Tab(text: "Başvurularım"),
//                               ),
//                               SizedBox(
//                                 width: 120,
//                                 child: Tab(text: "Eğitimlerim"),
//                               ),
//                               SizedBox(
//                                 width: 120,
//                                 child: Tab(text: "Duyurularım"),
//                               ),
//                               SizedBox(
//                                 width: 120,
//                                 child: Tab(text: "Anketlerim"),
//                               ),
//                             ],
//                             labelColor: Colors.black,
//                             unselectedLabelColor: Colors.grey,
//                             indicatorColor: Colors.purple,
//                           ),
//                           SizedBox(height: 8),
//                           SizedBox(
//                             height: 200,
//                             child: TabBarView(
//                               children: [
//                                 Center(child: Text("Başvurularım İçeriği")),
//                                 Center(child: Text("Eğitimlerim İçeriği")),
//                                 Center(child: Text("Duyurularım İçeriği")),
//                                 Center(child: Text("Anketlerim İçeriği")),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     




//_____________TABBAR__________

//  TabBar(
//               tabs: [
//                 Tab(
//                   icon: Icon(Icons.person),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.work_outline),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.import_contacts_outlined),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.verified_outlined),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.card_membership),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.language),
//                 ),
//               ],
//             ),