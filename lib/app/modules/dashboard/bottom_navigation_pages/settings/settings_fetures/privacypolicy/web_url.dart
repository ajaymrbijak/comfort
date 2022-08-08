import 'package:get/get.dart';

import 'package:url_launcher/url_launcher.dart';

void openUrl() async {
  Uri url = Uri.parse('https://www.google.com/');
  if (await canLaunchUrl(url)) {
    await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: false),
    );
  } else {
    Get.defaultDialog(title: "Error occured");
  }
}
