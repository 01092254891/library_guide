import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../test_cubit/notes_cubit/notes_cubit.dart';
import '../../../test_model/book_model.dart';
import 'custom-book_item.dart';

class ABookListView extends StatelessWidget {
  const ABookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ABookCubit, ABookState>(
      builder: (context, state) {
        List<ABookModel> abooks = BlocProvider.of<ABookCubit>(context).abook!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: abooks.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: ABookItem(
                    abook: abooks[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
