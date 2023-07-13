import 'package:flutter/material.dart';

import '../../../constants/const_color.dart';
import '../../widgets.dart';

class ChestAdvanced extends StatefulWidget {
  const ChestAdvanced({super.key});

  @override
  State<ChestAdvanced> createState() => _ChestAdvancedState();
}

class _ChestAdvancedState extends State<ChestAdvanced> {
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
                        'assets/360_F_176215790_xomZ0hUsR3ciKd4JLLQCjaUDhI88QL7E-min.jpg'))),
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
                    'CHEST Advanced',
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
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'CHEST',
                                  path: 'assets/workout/jumbing jacks-min.gif',
                                  wrkoutname: 'JUMBING JACKS',
                                  sizeon: '00:30')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'CHEST',
                                  path: 'assets/workout/incline pusup.jpg',
                                  wrkoutname: 'INCLINE PUSH-UP',
                                  sizeon: 'X 16')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'CHEST',
                                  path: 'assets/workout/knee pushups-min.jpg',
                                  wrkoutname: 'KNEE PUSH-UP',
                                  sizeon: 'X 12')),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SizedBox(
                                child: workoutlist(
                                    context: context,
                                    levelname: 'ADVANCED',
                                    areaname: 'CHEST',
                                    path: 'assets/workout/push up-min.jpg',
                                    wrkoutname: 'PUSH UP',
                                    sizeon: 'X 10')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SizedBox(
                                child: workoutlist(
                                    context: context,
                                    levelname: 'ADVANCED',
                                    areaname: 'CHEST',
                                    path: 'assets/workout/push up-min.jpg',
                                    wrkoutname: 'WIDE ARM PUSH UP',
                                    sizeon: 'X 10')),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'CHEST',
                                  path: 'assets/workout/incline pusup.jpg',
                                  wrkoutname: 'INCLINE PUSH-UP',
                                  sizeon: 'X 12')),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SizedBox(
                                child: workoutlist(
                                    context: context,
                                    levelname: 'ADVANCED',
                                    areaname: 'CHEST',
                                    path: 'assets/workout/push up-min.jpg',
                                    wrkoutname: 'WIDE ARM PUSH UP',
                                    sizeon: 'X 10')),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'CHEST',
                                  path: 'assets/workout/hindu push up-min.png',
                                  wrkoutname: 'HINDU PUSH-UP',
                                  sizeon: 'X 10')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'CHEST',
                                  path: 'assets/workout/cobra stretch-min.jpg',
                                  wrkoutname: 'COBRA STRETCH',
                                  sizeon: '00:30')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: workoutlist(
                                  context: context,
                                  levelname: 'ADVANCED',
                                  areaname: 'CHEST',
                                  path: 'assets/workout/chest stretch-min.png',
                                  wrkoutname: 'CHEST STRETCH',
                                  sizeon: '00:20')),
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
