import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../test_cubit/add_note_cubit/add_note_cubit.dart';
import '../../../test_cubit/notes_cubit/notes_cubit.dart';
import 'add_book_form.dart';

class AddBookBottomSheet extends StatelessWidget {
  const AddBookBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddBookCubit(),
      child: BlocConsumer<AddBookCubit, AddBookState>(
        listener: (context, state) {
          if (state is AddBookFailure) {}

          if (state is AddBookSuccess) {
            BlocProvider.of<BookCubit>(context).fetchAllBook();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddBookLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(
                child: AddBookForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
