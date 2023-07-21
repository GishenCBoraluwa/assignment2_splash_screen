import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const fbUrl = "https://m.facebook.com/nsbm.lk";
  static const insUrl ="https://instagram.com/nsbmgreenuniversity?igshid=MzRlODBiNWFlZA==";
  static const ytUrl = "https://www.youtube.com/@NSBMGreenUniversityTown";
  static const webUrl = "https://www.nsbm.ac.lk/";

  _launchURLBrowser(String urlSend) async {
    try {
      var url = Uri.parse(urlSend);
      await launchUrl(url);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            flex: 7,
            child: Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Center(
                  child: Image.asset("assets/R.png", width: 200, height: 200)),
            )),
        Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 255, 255, 255),
              // child: const Center(
              //   child: Text(
              //     "NSBM",
              //     style: TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.w500,
              //     ),
              //     textAlign: TextAlign.center,
              //   )
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "NSBM",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.facebook),
                        onPressed: () => _launchURLBrowser(fbUrl),
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.instagram),
                        onPressed: () => _launchURLBrowser(insUrl),
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.youtube),
                        onPressed: () => _launchURLBrowser(ytUrl),
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.globe),
                        onPressed: () => _launchURLBrowser(webUrl),
                      )
                    ],
                  )
                ],
              ),
            ))
      ],
    ));
  }
}
