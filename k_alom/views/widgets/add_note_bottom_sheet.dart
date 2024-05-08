import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/add_note_cubit/add_note_cubit.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';
import 'add_notes_form.dart';

class AddAlomBottomSheet extends StatelessWidget {
  const AddAlomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddAlomCubit(),
      child: BlocConsumer<AddAlomCubit, AddAlomState>(
        listener: (context, state) {
          if (state is AddAlomFailure) {}

          if (state is AddAlomSuccess) {
            BlocProvider.of<AlomCubit>(context).fetchAllAlom();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddAlomLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(
                child: AddAlomForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
