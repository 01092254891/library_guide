import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom-note_item.dart';

class TegaraListView extends StatelessWidget {
  const TegaraListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TegaraCubit, TegaraState>(
      builder: (context, state) {
        List<TegaraModel> tegara =
            BlocProvider.of<TegaraCubit>(context).tegara!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: tegara.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: TegaraItem(
                    tegara: tegara[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
