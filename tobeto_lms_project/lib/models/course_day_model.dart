import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

class CourseDay extends NeatCleanCalendarEvent {
  CourseDay(String summary,
      {required this.year,
      required this.titleOfEvent,
      required this.eventDay,
      required this.startHour,
      required this.endHour,
      required DateTime startTime,
      required DateTime endTime})
      : super(summary, startTime: startTime, endTime: endTime);

  final String titleOfEvent;
  final int year;
  final DateTime eventDay;
  final int startHour;
  final int endHour;
}
