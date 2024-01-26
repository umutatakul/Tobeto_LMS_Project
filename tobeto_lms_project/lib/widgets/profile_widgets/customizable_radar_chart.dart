import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';

class CustomizableRadarChart extends StatelessWidget {
  CustomizableRadarChart({Key? key}) : super(key: key);
  final dataOfScores = ProfileInformationData().succesDataMap;
  final dataOfColors = ProfileInformationData().succesDataColorMap;

  final List<Color> colorsOfChart = [];

  @override
  Widget build(BuildContext context) {
    dataOfColors.forEach((key, value) {
      colorsOfChart.add(value);
    });

    return Container(
      margin: const EdgeInsets.all(30),
      child: PieChart(
        dataMap: dataOfScores,
        animationDuration: const Duration(milliseconds: 800),
        chartLegendSpacing: 64,
        chartRadius: MediaQuery.of(context).size.width / 1.4,
        colorList: colorsOfChart,
        initialAngleInDegree: 35,
        chartType: ChartType.ring,
        ringStrokeWidth: 32,
        centerText: "🎯Hedeflerime ne kadar ulaştım?",
        legendOptions: const LegendOptions(
          showLegendsInRow: false,
          legendPosition: LegendPosition.right,
          showLegends: false,
          legendShape: BoxShape.rectangle,
          legendTextStyle: TextStyle(
            fontWeight: FontWeight.normal,
            //color: Colors.white,
          ),
        ),
        chartValuesOptions: ChartValuesOptions(
          showChartValueBackground: false,
          showChartValues: true,
          showChartValuesInPercentage: false,
          showChartValuesOutside: true,
          //Chart rakam skalasını temanın dinamik durumundan aldırdık
          chartValueStyle: Theme.of(context).textTheme.bodyLarge!,
          decimalPlaces: 1,
        ),
      ),
    );
  }
}


// Map<String, double> dataMap = {
//   "Flutter": 5,
//   "React": 3,
//   "Xamarin": 2,
//   "Ionic": 2,
// };
