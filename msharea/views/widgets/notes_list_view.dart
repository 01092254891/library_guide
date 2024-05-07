import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom-note_item.dart';

class ANotesListView extends StatelessWidget {
  const ANotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ANotesCubit, ANotesState>(
      builder: (context, state) {
        List<ANoteModel> anotes = BlocProvider.of<ANotesCubit>(context).anote!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: anotes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: ANoteItem(
                    anote: anotes[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
