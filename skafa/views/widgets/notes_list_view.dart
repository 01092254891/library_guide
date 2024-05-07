import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom-note_item.dart';

class SkafaListView extends StatelessWidget {
  const SkafaListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SkafaCubit, SkafaState>(
      builder: (context, state) {
        List<SkafaModel> skafa = BlocProvider.of<SkafaCubit>(context).skafa!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: skafa.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: SkafaItem(
                    skafa: skafa[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
