import 'package:flutter/material.dart';

class HeaderFieldMyEducation extends StatelessWidget {
  const HeaderFieldMyEducation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fullWeight = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).secondaryHeaderColor,
        border: Border.all(),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Eğitimlerle şimdi \nkendini geliştir",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  // Katalog Button
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          border: Border.all(),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15))),
                      child: Text(
                        "Katalog",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color: Colors.white70),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              child: Image.network(
                "https://img.etimg.com/thumb/width-640,height-480,imgsize-55812,resizemode-75,msid-88607879/small-biz/sme-sector/for-the-education-industry-the-pandemic-is-a-lesson-in-change-tech-adoption/education.jpg",
                fit: BoxFit.fitWidth,
                width: fullWeight * 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
