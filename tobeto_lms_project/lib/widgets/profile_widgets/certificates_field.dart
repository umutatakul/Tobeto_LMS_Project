import 'package:flutter/material.dart';

class CertificatesField extends StatelessWidget {
  const CertificatesField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        title: Text("Oluşturulacak"),
        subtitle: Text("Pdf ve png dosyası alacak bir yapı oluştur"),
      ),
    );
  }
}
