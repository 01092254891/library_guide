import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../test_cubit/notes_cubit/notes_cubit.dart';
import 'book_list_view.dart';
import 'custom_appbar.dart';

class BookViewBody extends StatefulWidget {
  const BookViewBody({Key? key}) : super(key: key);

  @override
  State<BookViewBody> createState() => _BookViewBodyState();
}

class _BookViewBodyState extends State<BookViewBody> {
  @override
  void initState() {
    BlocProvider.of<BookCubit>(context).fetchAllBook();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'كتب اقتصاد',
            icon: Icons.search,
          ),
          Expanded(
            child: BookListView(),
          ),
        ],
      ),
    );
  }
}
