import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/add_note_cubit/add_note_cubit.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';
import 'add_notes_form.dart';

class AddHasbBottomSheet extends StatelessWidget {
  const AddHasbBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddHasbCubit(),
      child: BlocConsumer<AddHasbCubit, AddHasbState>(
        listener: (context, state) {
          if (state is AddHasbFailure) {}

          if (state is AddHasbSuccess) {
            BlocProvider.of<HasbCubit>(context).fetchAllHasb();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddHasbLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(
                child: AddHasbForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
