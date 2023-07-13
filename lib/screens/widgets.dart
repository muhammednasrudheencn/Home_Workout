import 'package:flutter/material.dart';
import 'package:workout_app/screens/screen_strt.dart';

import '../functions/history_functions.dart';

Widget workoutlist({
  required BuildContext context,
  required String path,
  required String wrkoutname,
  required String sizeon,
  required String levelname,
  required String areaname,
}) {
  var mediaquery = MediaQuery.of(context);
  return InkWell(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (ctx) => StrtScreen(
                workoutname: wrkoutname,
                path: path,
                sizeon: ValueNotifier(sizeon),
                areaname: areaname,
                levelname: levelname,
              )));
    },
    child: SizedBox(
      child: Row(
        children: [
          Container(
            width: mediaquery.size.width * 0.20,
            height: mediaquery.size.height * 0.09,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(path),
            )),
          ),
          const SizedBox(
            width: 50,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      wrkoutname,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      sizeon,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                Visibility(
                  visible: visibletick(levelname, areaname, wrkoutname)!,
                  child: const Icon(
                    Icons.done,
                    color: Colors.green,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
