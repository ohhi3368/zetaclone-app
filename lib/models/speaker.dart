import 'package:zetaclone/models/character.dart';

///
/// Speaker of the Message.
/// 
class Speaker {
  final String name;
  final SpeakerType speakerType;
  final int id;
  final Character? character;
  Speaker({
    required this.name,
    required this.speakerType,
    this.id = -1,
    this.character
  });
}

enum SpeakerType {
  character,
  tempCharacter,
  user
}