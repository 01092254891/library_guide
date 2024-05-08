import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/add_note_cubit/add_note_cubit.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';
import 'add_notes_form.dart';

class AAddAlomBottomSheet extends StatelessWidget {
  const AAddAlomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AAddAlomCubit(),
      child: BlocConsumer<AAddAlomCubit, AAddAlomState>(
        listener: (context, state) {
          if (state is AAddAlomFailure) {}

          if (state is AAddAlomSuccess) {
            BlocProvider.of<AAlomCubit>(context).fetchAllAAlom();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AAddAlomLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(
                child: AAddAlomForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
