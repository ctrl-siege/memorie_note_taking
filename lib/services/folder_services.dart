// ignore_for_file: prefer_final_fields

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:memorie_note_taking/global_providers_container.dart';
import 'package:memorie_note_taking/models/folder_model.dart';
import 'package:memorie_note_taking/models/notes_model.dart';

class FolderService {
  final Ref container;

  List<FolderModel> _folders = [
    FolderModel(1, "Japanese Hiragana", 1, [
      NotesModel(1, "Hiragana Alphabet", "す >> su\n し >> shi "),
      NotesModel(2, "Hiragana Basic Words Pt 1", "すし >> sushi"),
    ]),
    FolderModel(2, "Data Structures", 1, [
      NotesModel(1, "Stack", "Stack >> "),
      NotesModel(2, "Queue", "Queue >> "),
      NotesModel(3, "Array", "Array >>"),
    ]),
  ];

  List<FolderModel> _ownerFolders = [];

  FolderService(this.container);

  List<FolderModel> getFolders(int owner) {
    for (var folder in _folders) {
      if (folder.owner == owner) {
        _ownerFolders.add(folder);
      }
    }
    return _ownerFolders;
  }

  void changeColor(String color, int folderId) {
    //artistService.artists.firstWhere((artist) => artist.name == name);
  }

  List<FolderModel> get folders => _ownerFolders;
}
