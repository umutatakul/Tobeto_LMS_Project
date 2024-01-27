import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class ActivityChart extends StatelessWidget {
  const ActivityChart({Key? key}) : super(key: key);

//https://www.youtube.com/watch?v=yo8mwO6WSiQ
//Burdan yapıldı.
  @override
  Widget build(BuildContext context) {
    return HeatMap(
      datasets: {
        DateTime(2024, 1, 27): 3,
        DateTime(2024, 1, 28): 7,
        DateTime(2024, 1, 29): 10,
        DateTime(2024, 1, 30): 13,
        DateTime(2024, 1, 31): 6,
      },
      startDate: DateTime.now(),
      endDate: DateTime.now().add(Duration(days: 30)),
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
