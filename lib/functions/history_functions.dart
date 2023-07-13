import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';

import '../model/history_model.dart';

ValueNotifier<List<History>> historic = ValueNotifier([]);

Future<void> addtodb() async {
  List<History> workouts = [
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'JUMBING JACKS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'ABDOMAL CRUNCHES',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'RUSSIAN TWIST',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'MOUNTAIN CLIMBER',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'HEEL TOUCH',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'LEG RAISES',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'PLANK',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'ABDOMAL CRUNCHES 1',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'RUSSIAN TWIST 1',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'MOUNTAIN CLIMBER 1',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'HEEL TOUCH 1',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'LEG RAISES 1',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'PLANK 1',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'COBRA STRETCH',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'SPIN LUMBER TWIST LEFT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ABS',
        workoutname: 'SPIN LUMBER TWIST RIGHT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'CHEST',
        workoutname: 'JUMBING JACKS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'CHEST',
        workoutname: 'INCLINE PUSH-UP',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'CHEST',
        workoutname: 'KNEE PUSH-UP',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'CHEST',
        workoutname: 'PUSH UP',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'CHEST',
        workoutname: 'WIDE ARM PUSH UP',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'CHEST',
        workoutname: 'INCLINE PUSH-UP 1',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'CHEST',
        workoutname: 'WIDE ARM PUSH UPS 1',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'CHEST',
        workoutname: 'HINDU PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'CHEST',
        workoutname: 'COBRA STRETCH',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'CHEST',
        workoutname: 'CHEST STRETCH',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'ARM RAISES',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'SIDE ARM RAISES',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'TRICEPS DRIPS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'ARM CIRCLE CLOCKWISE',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'ARM CIRCLE COUNTER CLOCKWISE',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'DIAMOND PUSHUPS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'JUMBING JACKS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'DIAGONAL PLANK',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'PUNCHES',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'INCH WORMS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'WALL PUSH-UP',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'TRICEPS STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'TRICEPS STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'STANDING BICEPS STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'ARMS',
        workoutname: 'STANDING BICEPS STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'SQUATS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'SIDE-LYING LEG LIFT LEFT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'SIDE-LYING LEG LIFT RIGHT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'BACKWARD LUNGE',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'DONKEY KICK LEFT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'DONKEY KICK RIGHT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'LEG QUAD STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'LEG QUAD STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'KNEE TO CHEST LEFT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'KNEE TO CHEST RIGHT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'WALL CALF RAISES',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'SUMO SQUAD CALF RAISES',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'CALF STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'LEGS',
        workoutname: 'CALF STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'JUMBING JACKS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'ARM RAISES',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'RHOMBOID PULLS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'SIDE ARM RAISES',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'KNEE PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'SIDE-LYING STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'SIDE-LYING STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'ARM SISSORS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'RHOMBOID PULLS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'SIDE ARM RAISES',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'KNEE PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'CAT COW POSE',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'COBRA STRETCH',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'SPIN LUMBER TWIST LEFT',
        isfinish: false),
    History(
        levelname: 'BEGINNER',
        areaname: 'BACK',
        workoutname: 'SPIN LUMBER TWIST RIGHT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'JUMBINGJACKS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'HEEL TOUCH',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'CROSS OVER CRUNCHES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'MOUNTAIN CLIMBER',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'HEEL TOUCH',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'SIDE BRIDGE LEFT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'SIDE BRIDGE RIGHT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'BUTT BRIDGE',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'BICYCLE CRUNCHES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'V-UP',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'HEEL TOUCH',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'ABDOMAL CRUNCHES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'PLANK',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'CROSS OVER CRUNCHES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'LEG RAISES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'BICYCLE CRUNCHES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'SIDE PLANK LEFT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'SIDE PLANK RIGHT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'COBRA STRETCH',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'SPIN LUMBER TWIST LEFT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ABS',
        workoutname: 'SPIN LUMBER TWIST RIGHT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'CHEST',
        workoutname: 'JUMBING JACKS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'CHEST',
        workoutname: 'INCLINE PUSH-UP',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'CHEST',
        workoutname: 'KNEE PUSHUPS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'CHEST',
        workoutname: 'PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'CHEST',
        workoutname: 'WIDE ARM PUSH-UP',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'CHEST',
        workoutname: 'INCLINE PUSH-UP',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'CHEST',
        workoutname: 'WIDE ARM PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'CHEST',
        workoutname: 'HINDU PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'CHEST',
        workoutname: 'COBRA STRUCURE',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'CHEST',
        workoutname: 'CHEST STRETCH',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'ARM RAISES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'SIDE ARM RAISES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'TRICEPS DRIPS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'ARM CIRCLE CLOCKWISE',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'ARM CIRCLE COUNTER CLOCKWISE',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'DIAMOND PUSHUPS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'JUMBING JACKS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'DIAGNAL PLANK',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'PUNCHES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'INCH WORMS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'WALL-PUSHUP',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'TRICEPS STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'TRICEPS STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'ARMS',
        workoutname: 'STANDING BICEPS STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'SQUATS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'SIDE-LYING LEG LIFT LEFT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'SIDE-LYING LEG LIFT RIGHT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'BACKWORD LUNGE',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'DONKEY KICK LEFT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'DONKEY KICK RIGHT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'LEG QUAD STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'LEG QUAD STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'KNEE TO CHEST LEFT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'KNEE TO CHEST RIGHT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'WALL CALF RAISES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'SUMO SQUAD CALF RAISES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'CALF STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'LEGS',
        workoutname: 'CALF STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'JUMBING JACKS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'ARM RAISES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'RHOMBOID PULLS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'SIDE ARM RAISES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'KNEE PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'SIDE-LYING STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'SIDE-LYING STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'ARM SISSORS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'RHOMBOID PULLS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'SIDE ARM RAISES',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'KNEE PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'CAT COW POSE',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'COBRA STRETCH',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'SPIN LUMBER TWIST LEFT',
        isfinish: false),
    History(
        levelname: 'AMATURE',
        areaname: 'BACK',
        workoutname: 'SPIN LUMBER TWIST RIGHT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'JUMBINGJACKS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'HEEL TOUCH',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'CROSS OVER CRUNCHES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'MOUNTAIN CLIMBER',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'HEEL TOUCH',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'SIDE BRIDGE LEFT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'SIDE BRIDGE RIGHT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'BUTT BRIDGE',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'BICYCLE CRUNCHES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'V-UP',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'HEEL TOUCH',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'ABDOMAL CRUNCHES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'PLANK',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'CROSS OVER CRUNCHES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'LEG RAISES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'BICYCLE CRUNCHES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'SIDE PLANK LEFT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'SIDE PLANK RIGHT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'COBRA STRETCH',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'SPIN LUMBER TWIST LEFT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ABS',
        workoutname: 'SPIN LUMBER TWIST RIGHT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'CHEST',
        workoutname: 'JUMBING JACKS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'CHEST',
        workoutname: 'INCLINE PUSH-UP',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'CHEST',
        workoutname: 'KNEE PUSHUPS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'CHEST',
        workoutname: 'PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'CHEST',
        workoutname: 'WIDE ARM PUSH-UP',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'CHEST',
        workoutname: 'INCLINE PUSH-UP',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'CHEST',
        workoutname: 'WIDE ARM PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'CHEST',
        workoutname: 'HINDU PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'CHEST',
        workoutname: 'COBRA STRUCURE',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'CHEST',
        workoutname: 'CHEST STRETCH',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'ARM RAISES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'SIDE ARM RAISES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'TRICEPS DRIPS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'ARM CIRCLE CLOCKWISE',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'ARM CIRCLE COUNTER CLOCKWISE',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'DIAMOND PUSHUPS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'JUMBING JACKS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'DIAGNAL PLANK',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'PUNCHES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'INCH WORMS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'WALL-PUSHUP',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'TRICEPS STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'TRICEPS STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'ARMS',
        workoutname: 'STANDING BICEPS STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'SQUATS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'SIDE-LYING LEG LIFT LEFT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'SIDE-LYING LEG LIFT RIGHT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'BACKWORD LUNGE',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'DONKEY KICK LEFT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'DONKEY KICK RIGHT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'LEG QUAD STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'LEG QUAD STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'KNEE TO CHEST LEFT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'KNEE TO CHEST RIGHT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'WALL CALF RAISES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'SUMO SQUAD CALF RAISES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'CALF STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'LEGS',
        workoutname: 'CALF STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'JUMBING JACKS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'ARM RAISES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'RHOMBOID PULLS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'SIDE ARM RAISES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'KNEE PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'SIDE-LYING STRETCH LEFT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'SIDE-LYING STRETCH RIGHT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'ARM SISSORS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'RHOMBOID PULLS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'SIDE ARM RAISES',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'KNEE PUSH-UPS',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'CAT COW POSE',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'COBRA STRETCH',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'SPIN LUMBER TWIST LEFT',
        isfinish: false),
    History(
        levelname: 'ADVANCED',
        areaname: 'BACK',
        workoutname: 'SPIN LUMBER TWIST RIGHT',
        isfinish: false),
  ];

  final db = await Hive.openBox<History>('historydb');
  await db.addAll(workouts);
}

Future<void> gettick() async {
  final db = await Hive.openBox<History>('historydb');
  historic.value.clear();
  historic.value.addAll(db.values);
  historic.notifyListeners();
}

bool? visibletick(String level, String focusarea, String nameworkout) {
  bool returnvalue = false;
  for (var x in historic.value) {
    if (level == x.levelname) {
      if (focusarea == x.areaname) {
        if (nameworkout == x.workoutname) {
          returnvalue = x.isfinish;
          break;
        }
      }
    }
  }
  return returnvalue;
}

Future<void> deletehistory(int index) async {
  final db = await Hive.openBox<History>('historydb');
  await db.deleteAt(0);

  gettick();
}
