import 'package:flutter/material.dart';

import '../../../constants/const_color.dart';

import '../../../functions/history_functions.dart';
import '../../../model/history_model.dart';
import '../../widgets.dart';

class AbsAmature extends StatefulWidget {
  const AbsAmature({super.key});

  @override
  State<AbsAmature> createState() => _AbsAmatureState();
}

class _AbsAmatureState extends State<AbsAmature> {
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
                    image: AssetImage('assets/bodybuilding-tips-min.jpg'))),
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
                    'ABS Amature',
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
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/jumbing jacks-min.gif',
                                      wrkoutname: 'JUMBING JACKS',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/heel touch 1-min.jpg',
                                      wrkoutname: 'HEEL TOUCH',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/cross over crunces-min.jpg',
                                      wrkoutname: 'CROSS OVER CRUNCHES',
                                      sizeon: '00:20')),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: SizedBox(
                                    child: workoutlist(
                                        context: context,
                                        levelname: 'AMATURE',
                                        areaname: 'ABS',
                                        path:
                                            'assets/workout/moountain climber-min.gif',
                                        wrkoutname: 'MOUNTAIN CLIMBER',
                                        sizeon: '00:30')),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/heel touch 1-min.jpg',
                                      wrkoutname: 'HEEL TOUCH',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/side bridge-min.png',
                                      wrkoutname: 'SIDE BRIDGE LEFT',
                                      sizeon: '00:20')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/side bridge-min.png',
                                      wrkoutname: 'SIDE BRIDGE RIGHT',
                                      sizeon: '00:20')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/BUTT BRIDGE-min.jpg',
                                      wrkoutname: 'BUTT BRIDGE',
                                      sizeon: '00:20')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/bicycle crunches-min.jpg',
                                      wrkoutname: 'BICYCLE CRUNCES',
                                      sizeon: '00:20')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path: 'assets/workout/v up-min.jpg',
                                      wrkoutname: 'V-UP',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/heel touch 1-min.jpg',
                                      wrkoutname: 'HEEL TOUCH',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/abdomal crunches-min.gif',
                                      wrkoutname: 'ABDOMAL CRUNCHES',
                                      sizeon: '00:20')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path: 'assets/workout/plank-min.gif',
                                      wrkoutname: 'PLANK',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/cross over crunces-min.jpg',
                                      wrkoutname: 'CROSS OVER CRUNCHES',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path: 'assets/workout/leg raises-min.jpg',
                                      wrkoutname: 'LEG RAISES',
                                      sizeon: '00:20')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/bicycle crunches-min.jpg',
                                      wrkoutname: 'BICYCLE CRUNCES',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/side bridge-min.png',
                                      wrkoutname: 'SIDE PLANK LEFT',
                                      sizeon: '00:20')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/side bridge-min.png',
                                      wrkoutname: 'SIDE PLANK RIGHT',
                                      sizeon: '00:20')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/cobra stretch-min.jpg',
                                      wrkoutname: 'COBRA STRETCH',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/spinlumber-min.jpeg',
                                      wrkoutname: 'SPIN LUMBER TWIST\nLEFT',
                                      sizeon: '00:30')),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: workoutlist(
                                      context: context,
                                      levelname: 'AMATURE',
                                      areaname: 'ABS',
                                      path:
                                          'assets/workout/spinlumber-min.jpeg',
                                      wrkoutname: 'SPIN LUMBER TWIST\nRIGHT',
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
