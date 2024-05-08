import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom-note_item.dart';

class AlomListView extends StatelessWidget {
  const AlomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlomCubit, AlomState>(
      builder: (context, state) {
        List<AlomModel> alom = BlocProvider.of<AlomCubit>(context).alom!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: alom.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: AlomItem(
                    alom: alom[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
