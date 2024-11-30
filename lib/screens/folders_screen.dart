// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'package:memorie_note_taking/global_providers_container.dart';

class FoldersScreen extends ConsumerWidget {
  const FoldersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final folderService = ref.watch(folderServiceProvider);

    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
          width: double.infinity,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Folders",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              label: Text("Search folder"),
                              suffixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            style: TextStyle(backgroundColor: Colors.white),
                          ),
                          Gap(12)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: folderService.folders.length,
                        itemBuilder: (context, index) => Card(
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  side: BorderSide(width: 1.0)),
                              child: InkWell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Container(
                                          height: 150,
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                folderService
                                                    .folders[index].name,
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Gap(4)
                                            ],
                                          )))),
                            )),
                  )
                ],
              ))),
    );
  }
}
