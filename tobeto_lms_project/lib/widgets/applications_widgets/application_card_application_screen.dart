import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/models/application__screen_model.dart';

class ApplicationCardApplicationScreen extends StatelessWidget {
  const ApplicationCardApplicationScreen({
    Key? key,
    required this.application,
  }) : super(key: key);
  //Renk ve ikonları alnacak status değerine verilen değere göre irdelenecek
  //Bunlar
  // { Approved, InProgress, Rejected }
  // Başvurulan organizasyonun adı
  final ApplicationScreenModel application;

  @override
  Widget build(BuildContext context) {
    //Kontrolörler
    //Renk kontrolü
    final Color currentColor = (application.status == "Approved")
        ? Colors.green
        : (application.status == "InProgress")
            ? Colors.yellow.shade900
            : Colors.red;
    //İkon kontrolü
    final IconData currentIcon = (application.status == "Approved")
        ? Icons.check
        : (application.status == "InProgress")
            ? Icons.av_timer_outlined
            : Icons.sentiment_dissatisfied;
    // Durum Metni
    final String statusString = (application.status == "Approved")
        ? "Kabul Edildi"
        : (application.status == "InProgress")
            ? "Değerlendirmede"
            : "Reddedildi";
    // İç satır metni Metni
    final String spanString = (application.status == "Approved")
        ? "Onaylandı"
        : (application == "InProgress")
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
                "${application.organizationName} \nBilgilendirme",
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
                    "${application.organizationName} Başvuru Formu $spanString.",
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
                    "${application.organizationName} için Belge Yükleme \nFormu $spanString.",
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
