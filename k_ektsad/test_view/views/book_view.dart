import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_gradution_project/k_ektsad/test_view/views/widgets/add_book_bottom_sheet.dart';
import 'package:my_gradution_project/k_ektsad/test_view/views/widgets/book_view_body.dart';

import '../../../constants.dart';
import '../../../simple_bloc_observer.dart';
import '../../test_model/book_model.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(BookModelAdapter());
  await Hive.openBox<BookModel>(kBookBox);

  runApp(BookView());
}

class BookView extends StatelessWidget {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return AddBookBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: BookViewBody(),
    );
  }
}
