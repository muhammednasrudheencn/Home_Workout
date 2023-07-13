import 'dart:async';

import 'package:flutter/material.dart';

import '../constants/const_color.dart';
import '../functions/history_functions.dart';

// ignore: must_be_immutable
class StrtScreen extends StatefulWidget {
  final String workoutname;
  final String path;
  final String levelname;
  final String areaname;
  ValueNotifier<String> sizeon = ValueNotifier('0');

  StrtScreen(
      {super.key,
      required this.workoutname,
      required this.path,
      required this.sizeon,
      required this.levelname,
      required this.areaname});

  @override
  State<StrtScreen> createState() => _StrtScreenState();
}

late AnimationController countcontroller;

class _StrtScreenState extends State<StrtScreen> {
  Timer? timer;

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
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: background,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 0.5,
                  decoration: const BoxDecoration(
                    color: background,
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 45),
                    height: mediaquery.size.height * 0.4,
                    width: mediaquery.size.width * 0.9,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.path), fit: BoxFit.cover),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.workoutname,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              ValueListenableBuilder(
                valueListenable: widget.sizeon,
                builder: (context, value, child) {
                  return CircleAvatar(
                      radius: 55,
                      child:
                          int.parse(converttimeLeft(widget.sizeon.value)) == 00
                              ? const Icon(
                                  Icons.done,
                                  size: 40,
                                  weight: 200,
                                )
                              : Text(converttimeLeft(widget.sizeon.value),
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900)));
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ValueListenableBuilder(
                valueListenable: widget.sizeon,
                builder: (context, value, child) {
                  return int.parse(converttimeLeft(widget.sizeon.value)) > 0
                      ? timer != null && timer!.isActive
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: stopcounting,
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: background),
                                  child: const Text(' P A U S E '),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    startcounting();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: background),
                                  child: const Text('R E S U M E'),
                                ),
                              ],
                            )
                          : ElevatedButton(
                              onPressed: startcounting,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: background),
                              child: const Text('S T A R T'),
                            )
                      : ElevatedButton(
                          onPressed: () {
                            addingtick(widget.levelname, widget.areaname,
                                widget.workoutname);
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          child: const Text('F I N I S H'),
                        );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void startcounting() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (int.parse(converttimeLeft(widget.sizeon.value)) > 0) {
        widget.sizeon.value =
            (int.parse(converttimeLeft(widget.sizeon.value)) - 1).toString();
        widget.sizeon.notifyListeners();
      } else {
        stopcounting();
      }
    });
  }

  void stopcounting() {
    timer?.cancel();
  }

  String converttimeLeft(String sizeon) {
    if (sizeon.length >= 2) {
      final value = sizeon.substring(sizeon.length - 2);
      return value;
    } else {
      final value = '0${sizeon[sizeon.length - 1]}';
      return value;
    }
  }

  void addingtick(String level, String focusarea, String nameworkout) {
    for (var x in historic.value) {
      if (level == x.levelname) {
        if (focusarea == x.areaname) {
          if (nameworkout == x.workoutname) {
            x.isfinish = true;

            historic.notifyListeners();
          }
        }
      }
    }
  }
}
