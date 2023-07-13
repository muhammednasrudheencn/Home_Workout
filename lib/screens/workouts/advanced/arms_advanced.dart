import 'package:flutter/material.dart';

import '../../../constants/const_color.dart';
import '../../widgets.dart';

class ArmAdvanced extends StatefulWidget {
  const ArmAdvanced({super.key});

  @override
  State<ArmAdvanced> createState() => _ArmAdvancedState();
}

class _ArmAdvancedState extends State<ArmAdvanced> {
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
                  // ignore: prefer_const_constructors
                  Text(
                    'ARMS Advanced',
                    style: const TextStyle(
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
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path: 'assets/workout/arm rises-min.jpg',
                                  wrkoutname: 'ARM RAISES',
                                  sizeon: '00:30')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path:
                                      'assets/workout/wide arm raises-min.jpg',
                                  wrkoutname: 'SIDE ARM RAISES',
                                  sizeon: '00:30')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path: 'assets/workout/trickeps drips-min.png',
                                  wrkoutname: 'TRICEPS DIPS',
                                  sizeon: 'X 10')),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SizedBox(
                                child: workoutlist(
                                    context: context,
                                    levelname: 'ADVANCED',
                                    areaname: 'ARMS',
                                    path: 'assets/workout/arm circle-min.jpg',
                                    wrkoutname: 'ARM CIRCLES CLOCKWISE',
                                    sizeon: '00:30')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SizedBox(
                                child: workoutlist(
                                    context: context,
                                    levelname: 'ADVANCED',
                                    areaname: 'ARMS',
                                    path: 'assets/workout/arm circle-min.jpg',
                                    wrkoutname:
                                        'ARM CIRCLES \nCONTER CLOCKWISE',
                                    sizeon: '00:30')),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path: 'assets/workout/diamond pushup-min.jpg',
                                  wrkoutname: 'DIAMOND PUSHUPS',
                                  sizeon: 'X 6')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path: 'assets/workout/jumbing jacks-min.gif',
                                  wrkoutname: 'JUMBING JACKS',
                                  sizeon: '00:30')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path: 'assets/workout/diagonal plank-min.jpg',
                                  wrkoutname: 'DIAGONAL PLANK',
                                  sizeon: 'X 10')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path: 'assets/workout/punches-min.jpg',
                                  wrkoutname: 'PUNCHES',
                                  sizeon: '00:30')),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SizedBox(
                                child: workoutlist(
                                    context: context,
                                    levelname: 'ADVANCED',
                                    areaname: 'ARMS',
                                    path: 'assets/workout/push up-min.jpg',
                                    wrkoutname: 'PUSH-UPS',
                                    sizeon: 'X 10')),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path: 'assets/workout/inch worms-min.png',
                                  wrkoutname: 'INCHWORMS',
                                  sizeon: 'X 8')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path: 'assets/workout/wallpushup-min.jpg',
                                  wrkoutname: 'WALL PUSH-UP',
                                  sizeon: 'X 12')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path:
                                      'assets/workout/trickep stretch-min.jpg',
                                  wrkoutname: 'TRICEPS STRETCH LEFT',
                                  sizeon: '00:30')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path:
                                      'assets/workout/trickep stretch-min.jpg',
                                  wrkoutname: 'TRICEPS STRETCH RIGHT',
                                  sizeon: '00:30')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path:
                                      'assets/workout/standing bicebs-min.jpg',
                                  wrkoutname: 'STANDING BICEPS STRETCH\nLEFT',
                                  sizeon: '00:30')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'ARMS',
                                  path:
                                      'assets/workout/standing bicebs-min.jpg',
                                  wrkoutname: 'STANDING BICEPS STRETCH\nRIGHT',
                                  sizeon: '00:30')),
                        ],
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
