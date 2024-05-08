import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom-note_item.dart';

class AAlomListView extends StatelessWidget {
  const AAlomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AAlomCubit, AAlomState>(
      builder: (context, state) {
        List<AAlomModel> aalom = BlocProvider.of<AAlomCubit>(context).aalom!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: aalom.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: AAlomItem(
                    aalom: aalom[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
