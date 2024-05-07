import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom-note_item.dart';

class SNotesListView extends StatelessWidget {
  const SNotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SNotesCubit, SNotesState>(
      builder: (context, state) {
        List<SNoteModel> snotes = BlocProvider.of<SNotesCubit>(context).snote!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: snotes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: SNoteItem(
                    snote: snotes[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
