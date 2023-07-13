import 'package:flutter/material.dart';

import '../../../constants/const_color.dart';

import '../../../functions/history_functions.dart';
import '../../../model/history_model.dart';
import '../../widgets.dart';

class Backamature extends StatefulWidget {
  const Backamature({super.key});

  @override
  State<Backamature> createState() => _BackamatureState();
}

class _BackamatureState extends State<Backamature> {
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
                        'assets/1b3677ecb1039fdc6ae0de251b5a0f8c-min.jpg'))),
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
                    'BACK Amature',
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
                                    areaname: 'BACK',
                                    path:
                                        'assets/workout/jumbing jacks-min.gif',
                                    wrkoutname: 'JUMBING JACKS',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'BACK',
                                    path: 'assets/workout/arm rises-min.jpg',
                                    wrkoutname: 'ARM RAISES',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'BACK',
                                    path: 'assets/workout/side lying-min.jpg',
                                    wrkoutname: 'RHOMBOID PULLS',
                                    sizeon: '00:30')),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'BEGINNER',
                                      areaname: 'BACK',
                                      path:
                                          'assets/workout/wide arm raises-min.jpg',
                                      wrkoutname: 'SIDE ARM RAISES',
                                      sizeon: '00:30')),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'BEGINNER',
                                      areaname: 'BACK',
                                      path:
                                          'assets/workout/knee pushups-min.jpg',
                                      wrkoutname: 'KNEE PUSH-UPS',
                                      sizeon: '00:30')),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'BACK',
                                    path: 'assets/workout/side lying-min.jpg',
                                    wrkoutname: 'SIDE-LYING STRETCH LEFT',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'BACK',
                                    path: 'assets/workout/side lying-min.jpg',
                                    wrkoutname: 'SIDE-LYING STRETCH RIGHT',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'BACK',
                                    path: 'assets/workout/arm sissors.jpg',
                                    wrkoutname: 'ARM SISSORS',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'BACK',
                                    path: 'assets/workout/arm sissors.jpg',
                                    wrkoutname: 'RHOMBOID PULLS',
                                    sizeon: '00:35')),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'BEGINNER',
                                      areaname: 'BACK',
                                      path:
                                          'assets/workout/wide arm raises-min.jpg',
                                      wrkoutname: 'SIDE ARM RAISES',
                                      sizeon: '00:30')),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'BEGINNER',
                                      areaname: 'BACK',
                                      path:
                                          'assets/workout/knee pushups-min.jpg',
                                      wrkoutname: 'KNEE PUSH-UPS',
                                      sizeon: '00:40')),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'BACK',
                                    path: 'assets/workout/catcow pose.jpg',
                                    wrkoutname: 'CAT COW POSE',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'BACK',
                                    path:
                                        'assets/workout/cobra stretch-min.jpg',
                                    wrkoutname: 'COBRA STRETCH',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'BACK',
                                    path: 'assets/workout/spinlumber-min.jpeg',
                                    wrkoutname: 'SPIN LUMBER TWIST\nLEFT',
                                    sizeon: '00:30')),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: workoutlist(
                                    context: context,
                                    levelname: 'BEGINNER',
                                    areaname: 'BACK',
                                    path: 'assets/workout/spinlumber-min.jpeg',
                                    wrkoutname: 'SPIN LUMBER TWIST\nRIGHT',
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
