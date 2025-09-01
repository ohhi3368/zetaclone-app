///
/// Speaker of the Message.
/// 
class Speaker {
  final String name;
  final SpeakerType speakerType;
  final int id;
  Speaker({
    required this.name,
    required this.speakerType,
    this.id = -1
  });
}

enum SpeakerType {
  character,
  user
}