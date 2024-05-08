import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/add_note_cubit/add_note_cubit.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';
import 'add_notes_form.dart';

class AddTegaraBottomSheet extends StatelessWidget {
  const AddTegaraBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTegaraCubit(),
      child: BlocConsumer<AddTegaraCubit, AddTegaraState>(
        listener: (context, state) {
          if (state is AddTegaraFailure) {}

          if (state is AddTegaraSuccess) {
            BlocProvider.of<TegaraCubit>(context).fetchAllTegara();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddTegaraLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(
                child: AddTegaraForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
