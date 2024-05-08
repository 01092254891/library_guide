import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom-note_item.dart';

class HasbListView extends StatelessWidget {
  const HasbListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HasbCubit, HasbState>(
      builder: (context, state) {
        List<HasbModel> hasb = BlocProvider.of<HasbCubit>(context).hasb!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: hasb.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: HasbItem(
                    hasb: hasb[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
