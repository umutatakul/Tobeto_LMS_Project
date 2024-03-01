//---------------Days Datas-----------------------

import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

const int generalShiftDay = 0;

class EventsColors {
  final colorJava1A = Colors.blueAccent.shade100;
  final colorJava1B = const Color.fromARGB(255, 9, 1, 67);
  final colorNet1A = Colors.green.shade200;
  final colorNet1B = Colors.green;
  final colorNet1C = Colors.green.shade900;
  final colorIsAnalisti1A = Colors.blueGrey.shade900;
  final colorMobil1A = Colors.yellow.shade800;
  final colorTest1A = Colors.yellowAccent.shade200;
  final colorMobil1B = Colors.orange.shade900;
}

class Events {
  final List<NeatCleanCalendarEvent> eventList = EvenetsData().baseList;
}

class EvenetsData {
  List tenWeeksLis = [];
  List<NeatCleanCalendarEvent> baseList = [
    NeatCleanCalendarEvent(
      "Java & React Full Stack -1A",
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 9, 30),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 12, 0),
      color: EventsColors().colorJava1A,
    ),
    NeatCleanCalendarEvent(
      "Java & React Full Stack -1A",
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 9, 0),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 12, 0),
      color: EventsColors().colorJava1A,
    ),
    NeatCleanCalendarEvent(
      "Java & React Full Stack -1A",
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 4, 9, 0),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 4, 12, 0),
      color: EventsColors().colorJava1A,
    ),
    //Java & React Full Stack -1B
    NeatCleanCalendarEvent(
      "Java & React Full Stack -1B",
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 13, 0),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 16, 0),
      color: EventsColors().colorJava1B,
    ),
    NeatCleanCalendarEvent(
      "Java & React Full Stack -1B",
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 13, 0),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 16, 0),
      color: EventsColors().colorJava1B,
    ),
    NeatCleanCalendarEvent(
      "Java & React Full Stack -1B",
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 4, 13, 0),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 4, 16, 0),
      color: EventsColors().colorJava1B,
    ),
    //.NET & React Full Stack -1A
    NeatCleanCalendarEvent(
      ".NET & React Full Stack -1A",
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 9, 0),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 12, 0),
      color: EventsColors().colorNet1A,
    ),
    NeatCleanCalendarEvent(
      ".NET & React Full Stack -1A",
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 9, 0),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 12, 0),
      color: EventsColors().colorNet1A,
    ),
    NeatCleanCalendarEvent(
      ".NET & React Full Stack -1A",
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 4, 9, 0),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 4, 12, 0),
      color: EventsColors().colorNet1A,
    ),
    //.NET & React Full Stack -1B
    NeatCleanCalendarEvent(
      ".NET & React Full Stack -1B",
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 13, 0),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 16, 0),
      color: EventsColors().colorNet1B,
    ),
    NeatCleanCalendarEvent(
      ".NET & React Full Stack -1B",
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 13, 0),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 16, 0),
      color: EventsColors().colorNet1B,
    ),
    NeatCleanCalendarEvent(
      ".NET & React Full Stack -1B",
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 4, 13, 0),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 4, 16, 0),
      color: EventsColors().colorNet1B,
    ),
    //.NET & React Full Stack -1C
    NeatCleanCalendarEvent(
      ".NET & React Full Stack -1C",
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 13, 0),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 16, 0),
      color: EventsColors().colorNet1C,
    ),
    NeatCleanCalendarEvent(
      ".NET & React Full Stack -1C",
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 13, 0),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 16, 0),
      color: EventsColors().colorNet1C,
    ),
    NeatCleanCalendarEvent(
      ".NET & React Full Stack -1C",
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 4, 13, 0),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 4, 16, 0),
      color: EventsColors().colorNet1C,
    ),
    //-------------SALI,PERŞEMBE-------------
    //İş Analisit 1A
    NeatCleanCalendarEvent("İş Analisti -1A",
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 1, 9, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 1, 12, 0),
        color: EventsColors().colorIsAnalisti1A),
    NeatCleanCalendarEvent("İş Analisti -1A",
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 3, 9, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 3, 12, 0),
        color: EventsColors().colorIsAnalisti1A),
    //Mobil Geliştirici (Flutter) -1A
    NeatCleanCalendarEvent("Mobil Geliştirici (Flutter) -1A",
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 1, 9, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 1, 12, 0),
        color: EventsColors().colorMobil1A),
    NeatCleanCalendarEvent("Mobil Geliştirici (Flutter) -1A",
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 3, 9, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 3, 12, 0),
        color: EventsColors().colorMobil1A),
    //Yazılım Kalite ve Test Uzmanı -1A
    NeatCleanCalendarEvent("Yazılım Kalite ve Test Uzmanı -1A",
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 1, 13, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 1, 16, 0),
        color: EventsColors().colorTest1A),
    NeatCleanCalendarEvent("Yazılım Kalite ve Test Uzmanı -1A",
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 3, 13, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 3, 16, 0),
        color: EventsColors().colorTest1A),
    //Mobil Geliştirici (Flutter) -1B
    NeatCleanCalendarEvent("Mobil Geliştirici (Flutter) -1B",
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 1, 13, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 1, 16, 0),
        color: EventsColors().colorMobil1B),
    NeatCleanCalendarEvent("Mobil Geliştirici (Flutter) -1B",
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 3, 13, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 3, 16, 0),
        color: EventsColors().colorMobil1B),
  ];
}
