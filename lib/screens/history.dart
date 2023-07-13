import 'package:flutter/material.dart';
import 'package:workout_app/screens/screen_level.dart';

import '../constants/const_color.dart';
import '../functions/history_functions.dart';

class Historyscreen extends StatefulWidget {
  const Historyscreen({super.key});

  @override
  State<Historyscreen> createState() => _HistoryscreenState();
}

class _HistoryscreenState extends State<Historyscreen> {
  ValueNotifier<List<String>> history = ValueNotifier([]);

  @override
  void initState() {
    listing();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: background,
          centerTitle: true,
          title: const Text(
            'History',
            style: TextStyle(color: background, fontWeight: FontWeight.normal),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: background,
              )),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              history.value.isNotEmpty
                  ? delete(0)
                  : Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const Levelscreen()));
            },
            backgroundColor:
                history.value.isNotEmpty ? Colors.red : Colors.blueAccent,
            child: history.value.isNotEmpty
                ? const Icon(Icons.delete)
                : const Icon(Icons.add)),
        body: history.value.isNotEmpty
            ? ValueListenableBuilder(
                valueListenable: history,
                builder: (context, value, child) {
                  return ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(history.value[index]),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: history.value.length,
                  );
                },
              )
            : const Center(
                child: Text(
                "you don't have any workouts",
                style: TextStyle(fontSize: 15),
              )));
  }

  void listing() {
    for (var x in historic.value) {
      if (x.isfinish == true) {
        if (!history.value.contains(x.workoutname)) {
          history.value.add(x.workoutname!);
          history.notifyListeners();
        }
      }
    }
  }

  void delete(int index) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('DELETE HISTORY'),
            content: const Text('Do you watn to delete the History'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: const Text('no')),
              TextButton(
                  onPressed: () {
                    history.value.removeAt(index);
                    for (var x in historic.value) {
                      x.isfinish = false;
                    }
                    history.notifyListeners();

                    Navigator.of(context).pop();
                  },
                  child: const Text('yes'))
            ],
          );
        });
  }
}
