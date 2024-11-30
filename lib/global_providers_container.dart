import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memorie_note_taking/services/folder_services.dart';
import 'package:memorie_note_taking/services/navigation_service.dart';
import 'package:memorie_note_taking/services/user_service.dart';

final navigationServiceProvider = Provider((ref) => NavigationService(ref));
final userServiceProvider = Provider((ref) => UserService(ref));
final folderServiceProvider = Provider((ref) => FolderService(ref));
