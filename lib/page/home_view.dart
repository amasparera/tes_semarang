import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tes_semarang/constant/color_app.dart';

import '../widget/form_data.dart';
import '../widget/form_text.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  bool isEMail = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        children: [
          Container(
            height: 200,
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Image.asset(
              "assets/logo.png",
              height: 70,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffFBFBFB),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome To Digicoins",
                  style: TextStyle(
                      color: appColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Create your Digicoins Account",
                  style: TextStyle(color: Color(0xff4E4E4E), fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: appColor, borderRadius: BorderRadius.circular(10)),
                  height: 54,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: isEMail ? Colors.white : appColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Email",
                            style: TextStyle(color: appColor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: isEMail ? appColor : Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Phone",
                            style: TextStyle(
                                color: isEMail ? Colors.white : appColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FormText(
                  isReq: true,
                  text: "Username",
                ),
                FormData(
                  hint: "Nusatech",
                ),
                FormText(
                  isReq: true,
                  text: "Email",
                ),
                FormData(
                  hint: "Nusatech",
                ),
                FormText(
                  isReq: true,
                  text: "Password",
                ),
                FormData(
                  hint: "Nusatech",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
