import 'dart:ui';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uber_ui/afterlogin_default_screen.dart/afterlogin_default_screen.dart';
import 'package:uber_ui/widgets/button.dart';
import 'package:uber_ui/homescreeen/homescreen.dart';

class authenticationscreen extends StatefulWidget {
  const authenticationscreen({super.key});

  @override
  State<authenticationscreen> createState() => _authenticationscreenState();
}

class _authenticationscreenState extends State<authenticationscreen> {
  late String countryname = "India";
  String countrycode = "+91";
  List<DropdownMenuItem> listofitem = [];
  late String f = "🇮🇳";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Enter your mobile number",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
              ),
              SizedBox(
                height: 15,
              ),

////////////////////////////////////////////////////////////////////////
              ///  row start for  textfield of mobile number
              Row(
                children: [
                  // this part for flag and pick country
                  GestureDetector(
                    onTap: () {
                      showCountryPicker(
                          context: context,
                          onSelect: (Country country) {
                            setState(() {
                              //  countryname = country.name;
                              countrycode = " +${country.phoneCode}".trim();
                              f = country.flagEmoji;
                            });
                            //  print(country.flagEmoji.toString());
                          });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 223, 222, 222),
                          borderRadius: BorderRadius.circular(10)),
                      height: 45,
                      width: 55,
                      child: Center(
                          child: Text(
                        f,
                        style: TextStyle(fontSize: 40),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  // this part show code of country like +91..
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 223, 222, 222),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    height: 45,
                    width: 80,
                    child: Center(
                        child: Text(
                      countrycode,
                      style: TextStyle(fontSize: 25),
                    )),
                  ),

                  // this part show mobie number textfield.....
                  Flexible(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 223, 222, 222),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        height: 45,
                        width: MediaQuery.of(context).size.width / 2,
                        child: Container(
                          //  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: TextField(
                            maxLength: 10,
                            decoration: InputDecoration(
                                counterText: "",
                                hintText: "Mobile Number",
                                border: InputBorder.none),
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: 25),
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //continue button
              button(
                  text: "Continue ",
                  color: Colors.black,
                  text_color: Colors.white,
                  func: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => afterlogin_default_screen(),
                        ));
                  }),

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 1,
                  )),
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text("OR")),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              button(
                  text: "Continue With Google",
                  text_color: Colors.black,
                  color: Color.fromARGB(255, 223, 222, 222),
                  func: () {}),
              SizedBox(
                height: 8,
              ),

              button(
                  text: "Continue With Apple",
                  text_color: Colors.black,
                  color: Color.fromARGB(255, 223, 222, 222),
                  func: () {}),
              SizedBox(
                height: 8,
              ),
              button(
                  text: "Continue With Facebook",
                  text_color: Colors.black,
                  color: Color.fromARGB(255, 223, 222, 222),
                  func: () {}),
              SizedBox(
                height: 30,
              ),

              GestureDetector(
                onTap: (() {
                  print("fint my acc touched");
                }),
                child: Center(
                  child: Text(
                    "find my account",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
