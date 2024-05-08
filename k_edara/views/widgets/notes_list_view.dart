import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom-note_item.dart';

class EdaraListView extends StatelessWidget {
  const EdaraListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EdaraCubit, EdaraState>(
      builder: (context, state) {
        List<EdaraModel> edara = BlocProvider.of<EdaraCubit>(context).edara!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: edara.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: EdaraItem(
                    edara: edara[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
