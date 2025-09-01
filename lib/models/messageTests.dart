import 'package:zetaclone/models/character.dart';
import 'package:zetaclone/models/message.dart';
import 'package:zetaclone/models/speaker.dart';

final Character testCharacter = Character(
  id: 1972,
  name: "야마다 f"
);

final Speaker testSpeaker = Speaker(
  name: "Test Speaker",
  speakerType: SpeakerType.character,
  id: testCharacter.id
);

final Speaker testUser = Speaker(
  name: "TestUser",
  speakerType: SpeakerType.user
);

final List<Message> testMessages = [
  Message(
    sender: testSpeaker,
    text: "Hello Fucking Flutter!"
  ),
  Message(
    sender: testSpeaker,
    text: "I hate your taste in music."
  ),
  Message(
    sender: testUser,
    text: "dont care 🔥🔥🔥🗣️🗣️🗣️🗣️"
  ),
  Message(
    sender: testSpeaker,
    text: "LONGMESSAGELONGMESSAGELONGMESSAGELONGMESSAGE\n\n\nLONGMESSAGELONGMESSAGELONGMESSAGELONGMESSAGE"
  )
];