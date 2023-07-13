import 'package:flutter/material.dart';

import '../../../constants/const_color.dart';
import '../../../functions/history_functions.dart';
import '../../../model/history_model.dart';
import '../../widgets.dart';

class Armamature extends StatefulWidget {
  const Armamature({super.key});

  @override
  State<Armamature> createState() => _ArmamatureState();
}

class _ArmamatureState extends State<Armamature> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_sharp)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            width: mediaquery.size.width * 1,
            height: mediaquery.size.height * 0.40,
            decoration: const BoxDecoration(
                color: background,
                image: DecorationImage(
                    image: AssetImage('assets/images (1)-min.jpeg'))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260),
            child: Container(
              width: mediaquery.size.width * 1,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'ARMS Amature',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: background,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ValueListenableBuilder(
                        valueListenable: historic,
                        builder: (context, List<History> historic, child) {
                          return Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path: 'assets/workout/arm rises-min.jpg',
                                      wrkoutname: 'ARM RAISES',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path:
                                          'assets/workout/wide arm raises-min.jpg',
                                      wrkoutname: 'SIDE ARM RAISES',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path:
                                          'assets/workout/trickeps drips-min.png',
                                      wrkoutname: 'TRICEPS DIPS',
                                      sizeon: '00:30')),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: SizedBox(
                                    child: workoutlist(
                                        context: context,
                                        levelname: 'AMATURE',
                                        areaname: 'ARM',
                                        path:
                                            'assets/workout/arm circle-min.jpg',
                                        wrkoutname: 'ARM CIRCLES CLOCKWISE',
                                        sizeon: '00:30')),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: SizedBox(
                                    child: workoutlist(
                                        context: context,
                                        levelname: 'AMATURE',
                                        areaname: 'ARM',
                                        path:
                                            'assets/workout/arm circle-min.jpg',
                                        wrkoutname:
                                            'ARM CIRCLES \nCONTER CLOCKWISE',
                                        sizeon: '00:30')),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path:
                                          'assets/workout/diamond pushup-min.jpg',
                                      wrkoutname: 'DIAMOND PUSHUPS',
                                      sizeon: '00:10')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path:
                                          'assets/workout/jumbing jacks-min.gif',
                                      wrkoutname: 'JUMBING JACKS',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path:
                                          'assets/workout/diagonal plank-min.jpg',
                                      wrkoutname: 'DIAGONAL PLANK',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path: 'assets/workout/punches-min.jpg',
                                      wrkoutname: 'PUNCHES',
                                      sizeon: '00:30')),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: SizedBox(
                                    child: workoutlist(
                                        context: context,
                                        levelname: 'AMATURE',
                                        areaname: 'ARM',
                                        path: 'assets/workout/push up-min.jpg',
                                        wrkoutname: 'PUSH-UPS',
                                        sizeon: '00:20')),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path: 'assets/workout/inch worms-min.png',
                                      wrkoutname: 'INCHWORMS',
                                      sizeon: '00:15')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path: 'assets/workout/wallpushup-min.jpg',
                                      wrkoutname: 'WALL PUSH-UP',
                                      sizeon: '00:20')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path:
                                          'assets/workout/trickep stretch-min.jpg',
                                      wrkoutname: 'TRICEPS STRETCH LEFT',
                                      sizeon: '00:35')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path:
                                          'assets/workout/trickep stretch-min.jpg',
                                      wrkoutname: 'TRICEPS STRETCH RIGHT',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path:
                                          'assets/workout/standing bicebs-min.jpg',
                                      wrkoutname:
                                          'STANDING BICEPS STRETCH\nLEFT',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ARM',
                                      path:
                                          'assets/workout/standing bicebs-min.jpg',
                                      wrkoutname:
                                          'STANDING BICEPS STRETCH\nRIGHT',
                                      sizeon: '00:30')),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
