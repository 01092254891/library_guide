import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom-note_item.dart';

class MAlomListView extends StatelessWidget {
  const MAlomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MAlomCubit, MAlomState>(
      builder: (context, state) {
        List<MAlomModel> malom = BlocProvider.of<MAlomCubit>(context).malom!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: malom.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: MAlomItem(
                    malom: malom[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
