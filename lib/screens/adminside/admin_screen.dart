import 'package:flutter/material.dart';

import '../../functions/db_functions.dart';
import '../../model/data_model.dart';
import '../home_screen.dart';
import 'admin_add.dart';
import 'admin_edit.dart';

class Adminpage extends StatefulWidget {
  const Adminpage({super.key});

  @override
  State<Adminpage> createState() => _AdminpageState();
}

class _AdminpageState extends State<Adminpage> {
  Planfunctions weeks = Planfunctions();

  @override
  void initState() {
    weeks.getplan();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    weeks.getplan();
    var mediaquery = MediaQuery.of(context);

    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.logout_sharp),
            onPressed: () {
              logoutfunction(context);
            }),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const Addpage()));
                },
                child: Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 0.20,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.add_circle_outline_outlined,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Add Plan ',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: Planfunctions.planlist,
                  builder: (BuildContext context, List<Plan> planlist,
                      Widget? child) {
                    return ListView.separated(
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                                '${Planfunctions.planlist.value[index].week!} WEEKS'),
                            trailing: FittedBox(
                              child: Row(
                                children: [
                                  Text(Planfunctions
                                      .planlist.value[index].level!),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (ctx) => Adminedit(
                                                    index: index,
                                                  )));
                                    },
                                    icon: const Icon(Icons.edit),
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      showalert(context, index);
                                    },
                                    icon: const Icon(Icons.delete_sweep),
                                    color: Colors.red,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemCount: Planfunctions.planlist.value.length);
                  },
                ),
              )
            ],
          ),
        )));
  }

  void showalert(BuildContext context, int index) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('delete ${Planfunctions.planlist.value[index].week}'),
            content: const Text('delete the plan '),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: const Text('no')),
              TextButton(
                  onPressed: () {
                    weeks.deletePlan(index);
                    Navigator.of(context).pop();
                  },
                  child: const Text('yes'))
            ],
          );
        });
  }

  logoutfunction(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('LogOut'),
            content: const Text('Do You Want To logout'),
            actions: [
              TextButton(
                  onPressed: () {
                    logout(context);
                  },
                  child: const Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('No'))
            ],
          );
        });
  }

  Future<void> logout(BuildContext context) async {
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => const Homescreen()),
        (route) => false);
  }
}
