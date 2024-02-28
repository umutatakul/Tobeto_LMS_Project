import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/data/exam_mock_data_list.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/exam_card_home.dart';

class ExamFieldHome extends StatelessWidget {
  const ExamFieldHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fullHeightOfScreen = MediaQuery.of(context).size.height;

    return Card(
      child: Column(
        children: [
          //Sınavlar yazısı Containerı
          Container(
            margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.onPrimary
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              "Sınavlar",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Container(
            height: fullHeightOfScreen / 4,
            child: Padding(
              //Sakın paddin verme ortalanmış görünüm bozulur
              padding: const EdgeInsets.all(0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: examMockDataList.length,
                shrinkWrap: false,
                itemBuilder: (context, index) {
                  return ExamCardHome(examModel: examMockDataList[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
