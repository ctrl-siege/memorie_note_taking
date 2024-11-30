import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:memorie_note_taking/global_providers_container.dart';
import 'package:memorie_note_taking/models/notes_model.dart';

import '../models/notes_model.dart';

class NotesService {
  final Ref container;

  List<NotesModel> _notesInFolder = [];
  NotesModel _notes = NotesModel(0, "", "");

  NotesService(this.container);

  List<NotesModel> get folders => _notesInFolder;
}
