import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom-note_item.dart';

class MEdaraListView extends StatelessWidget {
  const MEdaraListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MEdaraCubit, MEdaraState>(
      builder: (context, state) {
        List<MEdaraModel> medara =
            BlocProvider.of<MEdaraCubit>(context).medara!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: medara.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: MEdaraItem(
                    medara: medara[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
