import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:tobeto_lms_project/data/calendar_moc_data.dart';

class CalendarBody extends StatelessWidget {
  const CalendarBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Calendar(
        //Takvim o haftayı gösteriyo
        //Başlangıç gününü mevcut günün bulunduğu pazartesi seçmesini istedim
        startOnMonday: true,
        //Hafta günlerinin kısaltmalarını buraya giriyoruz.
        weekDays: const ["Pzt", "Sal", "Çar", "Per", "Cum", "Cmt", "Paz"],
        //Bulunduğu günü ay görünümüne büyütmek için
        isExpandable: false,
        todayColor: Colors.red,
        todayButtonText: "Bugüne Git",

        eventsList: Events().eventList,
        //Expandable kısmı  türkçeleştiriyor
        locale: "tr_TR",
        //AllDay evenet text'ini set ediyoruz
        allDayEventText: "Tüm gün",
        //Çoklu gün etkinliği son gün gösterimini set ediyoruz
        multiDayEndText: "Son gün",
        isExpanded: true,
        eventTileHeight: MediaQuery.of(context).size.height * 0.10,
      ),
    );
  }
}
