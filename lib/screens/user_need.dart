import 'package:flutter/material.dart';
import 'package:workout_app/screens/plan_screen.dart';
import 'package:workout_app/screens/screen_weight_1.dart';

import '../constants/const_color.dart';

class Userneed extends StatefulWidget {
  const Userneed({super.key});

  @override
  State<Userneed> createState() => _UserneedState();
}

class _UserneedState extends State<Userneed> {
  var loseweight = false;
  var muscles = false;
  var keepfit = false;
  var clicked = 0;
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  if (loseweight) {
                    setState(() {
                      loseweight = false;
                      clicked = 0;
                    });
                  } else {
                    setState(() {
                      loseweight = true;
                      muscles = false;
                      keepfit = false;
                      clicked = 1;
                    });
                  }
                },
                child: Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 0.20,
                  decoration: BoxDecoration(
                      color: loseweight == true ? background : normal,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Lose\nWeight',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 48,
                      ),
                      Container(
                        width: mediaquery.size.width * 0.45,
                        height: mediaquery.size.height * 0.20,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/lose-weight-app-for-men-1 (1)-min.jpg'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (muscles) {
                    setState(() {
                      muscles = false;
                      clicked;
                    });
                  } else {
                    setState(() {
                      muscles = true;
                      loseweight = false;
                      keepfit = false;
                      clicked++;
                    });
                  }
                },
                child: Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 0.20,
                  decoration: BoxDecoration(
                      color: muscles == true ? background : normal,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Muscles',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      Container(
                        width: mediaquery.size.width * 0.45,
                        height: mediaquery.size.height * 0.20,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/bodybuilding-tips-min.jpg'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (keepfit) {
                    setState(() {
                      keepfit = false;
                      clicked--;
                    });
                  } else {
                    setState(() {
                      keepfit = true;
                      loseweight = false;
                      muscles = false;
                      clicked++;
                    });
                  }
                },
                child: Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 0.20,
                  decoration: BoxDecoration(
                      color: keepfit == true ? background : normal,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Keep Fit',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                      Container(
                        width: mediaquery.size.width * 0.45,
                        height: mediaquery.size.height * 0.20,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/360_F_251398843_ID4J3cRbxy9ufibLwrQBUtS2wIoKTANc-min.jpg'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {
                  if (loseweight == true) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((ctx) => const Loseweight1())));
                  } else if (muscles == true || keepfit == true) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((ctx) => const Planscreen())));
                  } else {
                    selectclikedfield();
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: background,
                    fixedSize: const Size(150, 50)),
                child: const Text(
                  'NEXT',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }

  void selectclikedfield() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Please Select Your plan'),
      backgroundColor: Colors.red,
      showCloseIcon: true,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(10),
      duration: Duration(seconds: 2),
    ));
  }
}
