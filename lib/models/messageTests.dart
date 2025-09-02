import 'package:zetaclone/models/character.dart';
import 'package:zetaclone/models/message.dart';
import 'package:zetaclone/models/speaker.dart';

final Character testCharacter = Character(
  id: 1972,
  name: "이태화",
  imageId: -2,
);

final Character testCharacter2 = Character(
  id: 1973,
  name: "주순철",
  imageId: -2,
);

final Speaker testSpeaker = Speaker(
  name: testCharacter.name,
  speakerType: SpeakerType.character,
  id: testCharacter.id,
  character: testCharacter
);

final Speaker testSpeaker2 = Speaker(
  name: testCharacter2.name,
  speakerType: SpeakerType.character,
  id: testCharacter2.id,
  character: testCharacter2
);

final Speaker testUser = Speaker(
  name: "TestUser",
  speakerType: SpeakerType.user
);

final List<Message> testMessages = [
  Message(
    sender: testSpeaker,
    text: "안녕하세요, 나는 나이지리아에 거주했던 흑인 노동자 이태화다."
  ),
  Message(
    sender: testSpeaker,
    text: "너의 융장 융털 코털 쏙 다 빼주마."
  ),
  Message(
    sender: testUser,
    text: "너, GO BACK TO YOUR WORK! 🔥🔥🔥🗣️🗣️🗣️🗣️"
  ),
  Message(
    sender: testSpeaker2,
    text: "사실 나는, 클린통마타야. 🔥🔥"
  )
];