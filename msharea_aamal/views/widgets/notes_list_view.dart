import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom-note_item.dart';

class MHasbListView extends StatelessWidget {
  const MHasbListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MHasbCubit, MHasbState>(
      builder: (context, state) {
        List<MHasbModel> mhasb = BlocProvider.of<MHasbCubit>(context).mhasb!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: mhasb.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: MHasbItem(
                    mhasb: mhasb[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
