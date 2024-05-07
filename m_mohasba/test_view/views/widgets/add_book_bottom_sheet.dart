import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../test_cubit/add_note_cubit/add_note_cubit.dart';
import '../../../test_cubit/notes_cubit/notes_cubit.dart';
import 'add_book_form.dart';

class AAddBookBottomSheet extends StatelessWidget {
  const AAddBookBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AAddBookCubit(),
      child: BlocConsumer<AAddBookCubit, AAddBookState>(
        listener: (context, state) {
          if (state is AAddBookFailure) {}

          if (state is AAddBookSuccess) {
            BlocProvider.of<ABookCubit>(context).fetchAllABook();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AAddBookLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(
                child: AAddBookForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
