import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/models/announce_model.dart';

class AnnounceCardHome extends StatelessWidget {
  const AnnounceCardHome({Key? key, required this.announce}) : super(key: key);
  final AnnounceModel announce;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          border:
              const Border(left: BorderSide(width: 10, color: Colors.green)),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //
            children: [
              Text(
                "Duyuru",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.green.shade600),
              ),
              Container(
                child: Text(
                  "İstanbul Kodluyor ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.green.shade600),
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                //2 satırlık sabit alan kaplaması için yaptım
                "${announce.title} \n", textAlign: TextAlign.start,
                maxLines: 2,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    announce.date,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  InkWell(onTap: () {}, child: const Text("Devamını oku"))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}


// padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//           color: Theme.of(context).colorScheme.primaryContainer,
//           border:
//               const Border(left: BorderSide(width: 10, color: Colors.green)),
//           borderRadius: const BorderRadius.all(Radius.circular(30))),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //
//             children: [
//               Text(
//                 "İstanbul Kodluyor \nBilgilendirme",
//                 style: Theme.of(context).textTheme.titleLarge,
//               ),
//               Container(
//                 padding: const EdgeInsets.all(5),
//                 decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(15),
//                         topLeft: Radius.circular(15)),
//                     color: Colors.green),
//                 child: Text(
//                   "Kabul Edildi ",
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyLarge!
//                       .copyWith(color: Colors.white),
//                 ),
//               )
//             ],
//           ),
//           Column(
//             children: [
//               Row(
//                 children: [
//                   const Icon(
//                     Icons.check,
//                     color: Colors.green,
//                   ),
//                   Text(
//                     "İstanbul Kodluyor Başvuru Formu Onaylandı.",
//                     style: Theme.of(context).textTheme.bodyMedium,
//                   )
//                 ],
//               ),
//               Row(
//                 children: [
//                   const Icon(
//                     Icons.check,
//                     color: Colors.green,
//                   ),
//                   Text(
//                     "İstanbul Kodluyor Belge Yükleme \nFormu Onaylandı.",
//                     style: Theme.of(context).textTheme.bodyMedium,
//                   )
//                 ],
//               )
//             ],
//           )
//         ],
//       ),