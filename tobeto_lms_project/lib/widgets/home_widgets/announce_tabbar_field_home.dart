import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/data/announces_mock_data_list.dart';
import 'package:tobeto_lms_project/screens/announces_screen.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/announce_card_home.dart';

class AnnounceTabbarFieldHome extends StatelessWidget {
  const AnnounceTabbarFieldHome({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuerHeight = MediaQuery.of(context).size.height;

    const int showPcsOfannounce = 2;

    return Column(
      children: [
        // Bu anlamsız size box'ı sırf Lisview Builder ım hata vermesin diye koydum
        SizedBox(
          height: mediaQuerHeight * 4 / 10,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: showPcsOfannounce,
              itemBuilder: (ctx, index) {
                return AnnounceCardHome(
                  announce: announceMockDataList[index],
                );
              }),
        ),
        //Daha fazlasını görmek için tıklayın buttonu
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnnouncesScreen(),
                ));
              },
              child: Container(
                width: double.infinity,
                child: Text(
                  "Tüm Duyuruları Görmek İçin Tıklayın",
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              )),
        )
      ],
    );
  }
}



//  Expanded(
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: ListView.builder(
//           scrollDirection: Axis.vertical,
//           itemCount: announceMockDataList.length,
//           itemBuilder: (ctx, index) {
//             return Container(width: 12, child: Text("data"));
//             AnnounceCardHome();
//           },
//         ),
//       ),
//     );
//   }
