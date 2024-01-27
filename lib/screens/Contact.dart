import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        ElevatedButton(
            onPressed: () {

            },
            child: Text("Түз чалуу"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("SMS жөнөтүү"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("TikTok баракча"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Whats App"),
          ),
        ]),
      ),
      
    );
    
    
    // void _openWhatsAppChat () async {
    //   String phoneNumber = 'Tel:0559 25 66 62';
    //   var url = 'http://wa.me/559 25 66 62?text=HelloWord';
    //   await launch(url);
    }
  }




