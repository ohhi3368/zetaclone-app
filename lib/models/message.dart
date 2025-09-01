import 'package:zetaclone/models/speaker.dart';

///
/// Message Object.
///
class Message {
  final String text;
  final Speaker sender;
  Message({
    required this.text,
    required this.sender
  });
}