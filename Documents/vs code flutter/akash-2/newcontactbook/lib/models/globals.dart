import 'dart:io';

class Globals {
  static List<Diary> akash = [];
  static bool isdark = false;
  static File? image;
  static String? first;
  static String? last;
  static String? contact;
  static String? mail;

}

class Diary {
  final String? firstname;
  final String? lastname;
  final String? phonenumber;
  final String? email;
  final File? image;
  Diary({
    required this.firstname,
    required this.lastname,
    required this.phonenumber,
    required this.email,
    required this.image,
  });
}
