import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tobeto_lms_project/models/exam_model.dart';

class ExamCardHome extends StatelessWidget {
  const ExamCardHome({Key? key, required this.examModel}) : super(key: key);
  final ExamModel examModel;

  @override
  Widget build(BuildContext context) {
    final fullScreenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all(fullScreenWidth * .05 / 2),
      width: fullScreenWidth * 0.45,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AspectRatio(
            aspectRatio: 5 / 2,
            child: Container(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                child: Image.network(
                  examModel.headerImage,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Alt satır otomatik geçmesini istediğim için  Flexable koydum
              Flexible(child: Text(examModel.title)),
              // SizedBox(
              //   width: 20,
              // ),
              examModel.isExamCompleted
                  ? const Icon(
                      Icons.check_box_outlined,
                      color: Colors.green,
                    )
                  : const Icon(
                      Icons.square_outlined,
                      color: Colors.red,
                    )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            examModel.subTitle,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.watch_later_outlined),
              Text(
                examModel.duration,
                style: Theme.of(context).textTheme.titleLarge,
              )
            ],
          )
        ],
      ),
    );
  }
}
