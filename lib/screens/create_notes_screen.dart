import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class CreateNotesScreen extends ConsumerWidget {
  const CreateNotesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 20.0,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Create notes",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Gap(8),
              TextField(
                decoration: InputDecoration(
                  label: Text("Enter name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                style: TextStyle(backgroundColor: Colors.white),
              ),
              Gap(4),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  label: Text("Enter folder"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                style: TextStyle(backgroundColor: Colors.white),
              ),
              Gap(8),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(),
                scrollPadding: EdgeInsets.all(20.0),
                keyboardType: TextInputType.multiline,
                maxLines: 99999,
                autofocus: true,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
