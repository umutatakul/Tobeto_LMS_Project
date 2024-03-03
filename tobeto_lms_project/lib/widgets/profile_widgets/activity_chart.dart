import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class ActivityChart extends StatelessWidget {
  const ActivityChart({Key? key}) : super(key: key);

//https://www.youtube.com/watch?v=yo8mwO6WSiQ
//Burdan yapıldı.
  @override
  Widget build(BuildContext context) {
    // İşleme yapmaya göre durumu kaydedip göstermi dene
    return HeatMap(
      datasets: {
        DateTime(2024, 3, 1): 3,
        DateTime(2024, 3, 2): 7,
        DateTime(2024, 3, 4): 10,
        DateTime(2024, 3, 5): 13,
        DateTime(2024, 3, 7): 6,
        DateTime(2024, 3, 10): 3,
        DateTime(2024, 3, 12): 7,
        DateTime(2024, 3, 14): 10,
        DateTime(2024, 3, 15): 13,
        DateTime(2024, 3, 17): 6,
        DateTime(2024, 3, 20): 3,
        DateTime(2024, 3, 22): 7,
        DateTime(2024, 3, 24): 10,
        DateTime(2024, 3, 25): 13,
        DateTime(2024, 3, 27): 6,
      },
      startDate: DateTime.now(),
      endDate: DateTime.now().add(const Duration(days: 30)),
      size: 50,
      colorMode: ColorMode.opacity,
      showText: false,
      scrollable: true,
      colorsets: {
        1: Colors.green.shade900,
        2: Colors.green.shade800,
        3: Colors.green.shade300,
      },
      onClick: (value) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(value.toString())));
      },
    );
  }
}
