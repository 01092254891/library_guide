import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 16)
class SNoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;

  SNoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
