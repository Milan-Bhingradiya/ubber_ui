import 'package:flutter/material.dart';
import 'package:uber_ui/authscreen/authenticationscreen.dart';

class firsttimescreen extends StatelessWidget {
  const firsttimescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF286ef0),
      body: SafeArea(
        
          child: Container(
            color: Color(0xFF286ef0),
            child: SingleChildScrollView(
              child: Column(
                
                    children: [
              SizedBox(
                height: 50,
              ),
                      
              //////////////////////////////////////////////////////////////////////////////////
              Text(
                "uber",
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.white, fontSize: 50),
              ),
                      
              ////////////////////////////////////////////////////////////////////////////////
              SizedBox(
                height: 50,
              ),
                      
              ////////////////////////////////////////////////////////////////////////////////
              Center(
                child: Image.asset(
                  "assets/firsttimescreen_img.jpg",
                  height: 200,
                  width: 200,
                ),
              ),
              ////////////////////////////////////////////////////////////////////////////////
              SizedBox(
                height: 60,
              ),
              ////////////////////////////////////////////////////////////////////////////////
              Text(
                "Move with Safety",
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.white, fontSize: 40),
              ),
              SizedBox(
                height: 100,
              ),
                      
              ////////////////////////////////////////////////////////////////////////////////
              ///  button
              Expanded(
                flex: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => authenticationscreen())));
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "Get Started",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Icon(
                          Icons.arrow_right_alt_outlined,
                          color: Colors.white,
                          size: 40,
                        )
                      ],
                    ),
                    color: Colors.black,
                    height: 50,
                    width: 350,
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
