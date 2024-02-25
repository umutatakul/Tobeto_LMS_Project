import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/certificates_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/education_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/experiences_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/individual_information_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/skills_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/social_media_accounts_tab.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/announce_tabbar_field_home.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/education_card_home.dart';

class TabbarFieldHome extends StatelessWidget {
  const TabbarFieldHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //------------İSTANBUL KODLUYOR RESMİ-------------------

        Container(
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(20),
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
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),

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
                                    //------Başvurularım Kartlarıı---------
                                    //Başvurum onaylandı
                                    Container(
                                      padding: EdgeInsets.all(12),
                                      //height: 200,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer,
                                          border: const Border(
                                              left: BorderSide(
                                                  width: 10,
                                                  color: Colors.green)),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            //
                                            children: [
                                              Text(
                                                "İstanbul Kodluyor \nBilgilendirme",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge,
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomLeft: Radius
                                                                .circular(15),
                                                            topLeft:
                                                                Radius.circular(
                                                                    15)),
                                                    color: Colors.green),
                                                child: Text(
                                                  "Kabul Edildi ",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge!
                                                      .copyWith(
                                                          color: Colors.white),
                                                ),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  const Icon(
                                                    Icons.check,
                                                    color: Colors.green,
                                                  ),
                                                  Text(
                                                    "İstanbul Kodluyor Başvuru Formu Onaylandı.",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium,
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Icon(
                                                    Icons.check,
                                                    color: Colors.green,
                                                  ),
                                                  Text(
                                                    "İstanbul Kodluyor Belge Yükleme \nFormu Onaylandı.",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium,
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    //------------Başvuru Değerlendirmede-----------
                                    Container(
                                      margin: const EdgeInsets.only(top: 12),
                                      padding: const EdgeInsets.all(12),
                                      //height: 200,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer,
                                          border: Border(
                                              left: BorderSide(
                                                  width: 10,
                                                  color:
                                                      Colors.yellow.shade900)),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            //
                                            children: [
                                              Text(
                                                "İstanbul Kodluyor \nBilgilendirme",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge,
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    15),
                                                            topLeft:
                                                                Radius.circular(
                                                                    15)),
                                                    color:
                                                        Colors.yellow.shade900),
                                                child: Text(
                                                  "Değerlendirmede ",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge!
                                                      .copyWith(
                                                          color: Colors.white),
                                                ),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.av_timer_outlined,
                                                    color:
                                                        Colors.yellow.shade900,
                                                  ),
                                                  Text(
                                                    "İstanbul Kodluyor Başvuru Formu Değerlendiriliyor.",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium,
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.av_timer_outlined,
                                                    color:
                                                        Colors.yellow.shade900,
                                                  ),
                                                  Text(
                                                    "İstanbul Kodluyor Belge Yükleme \nFormu Değerlendirmede.",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium,
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    //------------Başvuru Reddedildi-----------
                                    Container(
                                      margin: const EdgeInsets.only(top: 12),
                                      padding: const EdgeInsets.all(12),
                                      //height: 200,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer,
                                          border: Border(
                                              left: BorderSide(
                                                  width: 10,
                                                  color:
                                                      Colors.yellow.shade900)),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            //
                                            children: [
                                              Text(
                                                "İstanbul Kodluyor \nReddedildi",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge,
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    15),
                                                            topLeft:
                                                                Radius.circular(
                                                                    15)),
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .error),
                                                child: Text(
                                                  "Reddedildi ",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge!
                                                      .copyWith(
                                                          color: Colors.white),
                                                ),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .sentiment_dissatisfied,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .error,
                                                  ),
                                                  Text(
                                                    "İstanbul Kodluyor Başvuru Formu Reddedildi.",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium,
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .sentiment_dissatisfied,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .error,
                                                  ),
                                                  Text(
                                                    "İstanbul Kodluyor Belge Yükleme \nFormu Rededildi.",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium,
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
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
                                        onPressed: () {},
                                        child: Container(
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