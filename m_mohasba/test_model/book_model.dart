import 'package:hive/hive.dart';

part 'book_model.g.dart';

@HiveType(typeId: 13)
class ABookModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;

  ABookModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
