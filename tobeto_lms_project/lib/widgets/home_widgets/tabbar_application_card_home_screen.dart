import 'package:flutter/material.dart';

class TabbarApplicationCardHomeScreen extends StatelessWidget {
  const TabbarApplicationCardHomeScreen(
      {Key? key, required this.status, required this.organizationName})
      : super(key: key);
  //Renk ve ikonları alnacak status değerine verilen değere göre irdelenecek
  //Bunlar
  // { Approved, InProgress, Rejected }

  final String status;

  // Başvurulan organizasyonun adı

  final String organizationName;
  @override
  Widget build(BuildContext context) {
    //Kontrolörler
    //Renk kontrolü
    final Color currentColor = (status == "Approved")
        ? Colors.green
        : (status == "InProgress")
            ? Colors.yellow.shade900
            : Colors.red;
    //İkon kontrolü
    final IconData currentIcon = (status == "Approved")
        ? Icons.check
        : (status == "InProgress")
            ? Icons.av_timer_outlined
            : Icons.sentiment_dissatisfied;
    // Durum Metni
    final String statusString = (status == "Approved")
        ? "Kabul Edildi"
        : (status == "InProgress")
            ? "Değerlendirmede"
            : "Reddedildi";
    // İç satır metni Metni
    final String spanString = (status == "Approved")
        ? "Onaylandı"
        : (status == "InProgress")
            ? "Değerlendiriliyor"
            : "Reddedildi";
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          border: Border(left: BorderSide(width: 10, color: currentColor)),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //
            children: [
              Text(
                "$organizationName \nBilgilendirme",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                    color: currentColor),
                child: Text(
                  "$statusString ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Icon(
                    currentIcon,
                    color: currentColor,
                  ),
                  Text(
                    "İstanbul Kodluyor Başvuru Formu $spanString.",
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    currentIcon,
                    color: currentColor,
                  ),
                  Text(
                    "İstanbul Kodluyor Belge Yükleme \nFormu $spanString.",
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
