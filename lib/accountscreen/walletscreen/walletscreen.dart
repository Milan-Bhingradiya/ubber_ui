import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class walletscreen extends StatefulWidget {
  const walletscreen({super.key});

  @override
  State<walletscreen> createState() => _walletscreenState();
}

class _walletscreenState extends State<walletscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  leading: const BackButton(
                    color: Colors.black, // <-- SEE HERE
                  ),
                  backgroundColor: Colors.white,
                  expandedHeight: 80,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    expandedTitleScale: 1.5,
                    title: Text(
                      "Wallet",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      textAlign: TextAlign.start,
                    ),
                  )),
            ];
          },
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 7,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Ubber Cash",
                                style: TextStyle(fontSize: 22),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "0.00",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w900),
                              ),
                              SizedBox(height: 15),
                              Container(
                                child: Center(
                                  child: Text(
                                    "+ Gift Card",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              )
                            ]),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.65,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chevron_right_sharp,
                              size: 30,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 217, 214, 214),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                      child: Text(
                                    "Send a Gift",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.4,
                                    child: Text(
                                        "You can now send an instant Uber Cash Gift For use on Uber or uber Eats "),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text(
                                        "Send a gift",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: 100,
                                      width: 100,
                                      child: Image.asset(
                                          "assets/payment_screen_green_img.png")),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),

                  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                  SizedBox(
                    height: 15,
                  ),
                  Text("Payment methods",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),

                  SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: [
                      Container(
                          height: 25,
                          width: 35,
                          child: Image.asset("assets/cash_logo.png")),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Cash",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    child: Center(
                      child: Text(
                        "Add payment method",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Text("Ride Profile",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),

                  SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/person.png")),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Persnol",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  SizedBox(
                    height: 15,
                  ),
                  Text("Vouchers",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),

                  SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset("assets/voucher_logo.png")),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Vouchers",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add voucher code",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                  SizedBox(
                    height: 15,
                  ),
                  Text("Promotions",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),

                  SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset("assets/promotion.png")),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "promotions",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add promo code",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ))),
    );
  }
}
