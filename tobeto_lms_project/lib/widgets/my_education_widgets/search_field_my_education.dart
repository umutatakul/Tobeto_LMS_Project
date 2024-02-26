import 'package:flutter/material.dart';

class SearchFieldMyEducation extends StatelessWidget {
  const SearchFieldMyEducation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(width: 0.8),
          borderRadius: BorderRadius.circular(118)),
      child: Row(
        children: [
          const Icon(Icons.search),
          Text(
            "Eğitimler içinde arayın!",
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
