import 'package:memorie_note_taking/models/notes_model.dart';

class FolderModel {
  int id;
  String name;
  int owner;
  String color;
  List<NotesModel> notes = [];

  FolderModel(this.id, this.name, this.owner, this.color, this.notes);
}
