import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';
import 'package:tobeto_lms_project/widgets/custom_bottom_navigation_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ExamWebviewScreen extends StatefulWidget {
  const ExamWebviewScreen({Key? key}) : super(key: key);
  final url = "https://www.jotform.com/atakulumut/herkes-icin-kodlama-sinavi";

  @override
  State<ExamWebviewScreen> createState() => _ExamWebviewScreenState();
}

class _ExamWebviewScreenState extends State<ExamWebviewScreen> {
  final controller = WebViewController();
  // Butonlarda donma ya da çalışmama oluyor onunla ilgilen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(appBarTitle: "Sınav sayfası"),
      body: WebViewWidget(
          controller: controller
            ..setJavaScriptMode(JavaScriptMode.disabled)
            ..loadRequest(Uri.parse(widget.url))),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
