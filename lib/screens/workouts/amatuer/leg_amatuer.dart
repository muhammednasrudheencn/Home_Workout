import 'package:flutter/material.dart';

import '../../../constants/const_color.dart';
import '../../../functions/history_functions.dart';
import '../../../model/history_model.dart';
import '../../widgets.dart';

class LegAmature extends StatefulWidget {
  const LegAmature({super.key});

  @override
  State<LegAmature> createState() => _LegAmatureState();
}

class _LegAmatureState extends State<LegAmature> {
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
                    image: AssetImage(
                        'assets/istockphoto-1004109074-612x612-min.jpg'))),
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
                    'LEGS Beginner',
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
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path: 'assets/workout/squats-min.jpg',
                                    wrkoutname: 'SQUATS',
                                    sizeon: '00:40')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path: 'assets/workout/side lying-min.jpg',
                                    wrkoutname: 'SIDE-LYING LEG LIFT LEFT',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path: 'assets/workout/side lying-min.jpg',
                                    wrkoutname: 'SIDE-LYING LEG LIFT RIGHT',
                                    sizeon: '00:30')),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'BEGINNER',
                                      areaname: 'LEG',
                                      path: 'assets/workout/backward-min.jpg',
                                      wrkoutname: 'BACKWARD LUNGE',
                                      sizeon: '00:40')),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path: 'assets/workout/donkey kicks-min.jpg',
                                    wrkoutname: 'DONKEY KICK LEFT',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path: 'assets/workout/donkey kicks-min.jpg',
                                    wrkoutname: 'DONKEY KICK RIGHT',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path: 'assets/workout/left quad-min.jpg',
                                    wrkoutname: 'LEG QUAD STRETCH LEFT',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path: 'assets/workout/left quad-min.jpg',
                                    wrkoutname: 'LEG QUAD STRETCH RIGHT',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path:
                                        'assets/workout/knee to chest-min.jpg',
                                    wrkoutname: 'KNEE TO CHEST LEFT',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path:
                                        'assets/workout/knee to chest-min.jpg',
                                    wrkoutname: 'KNEE TO CHEST RIGHT',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path: 'assets/workout/calf raises-min.jpg',
                                    wrkoutname: 'WALL CALF RAISES',
                                    sizeon: '00:40')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path: 'assets/workout/sumo quats-min.jpg',
                                    wrkoutname: 'SUMO SQUAD CALF RAISES',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path: 'assets/workout/calf stretch-min.jpg',
                                    wrkoutname: 'CALF STRETCH LEFT',
                                    sizeon: '00:20')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'LEG',
                                    path: 'assets/workout/calf stretch-min.jpg',
                                    wrkoutname: 'CALF STRETCH RIGHT',
                                    sizeon: '00:30')),
                          ],
                        );
                      },
                    )),
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
