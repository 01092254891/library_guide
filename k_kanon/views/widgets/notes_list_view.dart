import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom-note_item.dart';

class KanonListView extends StatelessWidget {
  const KanonListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KanonCubit, KanonState>(
      builder: (context, state) {
        List<KanonModel> kanon = BlocProvider.of<KanonCubit>(context).kanon!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: kanon.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: KanonItem(
                    kanon: kanon[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
