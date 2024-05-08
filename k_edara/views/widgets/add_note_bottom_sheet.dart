import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/add_note_cubit/add_note_cubit.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';
import 'add_notes_form.dart';

class AddEdaraBottomSheet extends StatelessWidget {
  const AddEdaraBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddEdaraCubit(),
      child: BlocConsumer<AddEdaraCubit, AddEdaraState>(
        listener: (context, state) {
          if (state is AddEdaraFailure) {}

          if (state is AddEdaraSuccess) {
            BlocProvider.of<EdaraCubit>(context).fetchAllEdara();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddEdaraLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(
                child: AddEdaraForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
