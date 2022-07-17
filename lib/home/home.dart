// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:trackassist/config/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('TrackAssist'),
          backgroundColor: COR_PRIMARIA,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                      backgroundColor: MaterialStateColor.resolveWith(
                        ((states) => COR_PRIMARIA),
                      ),
                      elevation: MaterialStateProperty.resolveWith<double>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                            return 0;
                          }
                          return 0;
                        },
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered) ||
                            states.contains(MaterialState.selected)) {
                          return const BorderSide(
                              color: Colors.white, width: 2);
                        }
                        return const BorderSide(color: COR_PRIMARIA, width: 2);
                      }),
                    ),
                    child: const Text('Início'),
                  ),
                ),
                const SizedBox(width: 80),
                Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                      backgroundColor: MaterialStateColor.resolveWith(
                        ((states) => COR_PRIMARIA),
                      ),
                      elevation: MaterialStateProperty.resolveWith<double>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                            return 0;
                          }
                          return 0;
                        },
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered) ||
                            states.contains(MaterialState.selected)) {
                          return const BorderSide(
                              color: Colors.white, width: 2);
                        }
                        return const BorderSide(color: COR_PRIMARIA, width: 2);
                      }),
                    ),
                    child: const Text('Prestadores'),
                  ),
                ),
                const SizedBox(width: 80),
                Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                      backgroundColor: MaterialStateColor.resolveWith(
                        ((states) => COR_PRIMARIA),
                      ),
                      elevation: MaterialStateProperty.resolveWith<double>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                            return 0;
                          }
                          return 0;
                        },
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered) ||
                            states.contains(MaterialState.selected)) {
                          return const BorderSide(
                              color: Colors.white, width: 2);
                        }
                        return const BorderSide(color: COR_PRIMARIA, width: 2);
                      }),
                    ),
                    child: const Text('Histórico'),
                  ),
                ),
              ],
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: ListView(
                      itemExtent: 95,
                      children: [
                        ListTile(
                          title: const Icon(
                            Icons.location_on_outlined,
                            size: 40,
                            color: COR_PRIMARIA,
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          title: const Icon(
                            Icons.search,
                            size: 40,
                            color: COR_PRIMARIA,
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          title: const Icon(
                            Icons.map,
                            size: 40,
                            color: COR_PRIMARIA,
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          title: const Icon(
                            Icons.palette,
                            size: 40,
                            color: COR_PRIMARIA,
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          title: const Icon(
                            Icons.filter_list_alt,
                            size: 40,
                            color: COR_PRIMARIA,
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          title: const Icon(
                            Icons.info,
                            size: 40,
                            color: COR_PRIMARIA,
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: double.maxFinite,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
