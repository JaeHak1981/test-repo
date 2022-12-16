import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FirstPage extends StatelessWidget {
  final homeUrl =
      'https://bubbly-cause-fb4.notion.site/Class-c3284153a2074e9fa8423c193cba40bf';

  WebViewController? controller;
   FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {
          if(controller == null){
            return;
          }
          controller!.loadUrl(homeUrl);
        }, icon: Icon(Icons.home))],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller){this.controller=controller;},
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
