import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../model/class.dart';
import 'history.dart';

class DailyScreen extends StatefulWidget {
  const DailyScreen({super.key});

  @override
  State<DailyScreen> createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen> {
  DateTime today = DateTime.now();

  void ondayselect(DateTime day, DateTime selectday) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Viewclass> viewinfo = [
      Viewclass(
        seticon: const Icon(Icons.history_toggle_off),
        setname: 'History',
        tileicon: const Icon(Icons.navigate_next),
      ),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(today.toString().split(" ")[0]),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TableCalendar(
                headerStyle: const HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                focusedDay: today,
                firstDay: DateTime.utc(2000, 1, 1),
                lastDay: DateTime.utc(2030, 1, 1),
                onDaySelected: ondayselect,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: viewinfo[index].seticon,
                    title: Text(
                      viewinfo[index].setname,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    trailing: viewinfo[index].tileicon,
                    onTap: () {
                      if (index == 0) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const Historyscreen()));
                      }
                    },
                  );
                },
                itemCount: viewinfo.length,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      )),
    );
  }
}
