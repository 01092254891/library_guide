import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class ANotesViewBody extends StatefulWidget {
  const ANotesViewBody({Key? key}) : super(key: key);

  @override
  State<ANotesViewBody> createState() => _ANotesViewBodyState();
}

class _ANotesViewBodyState extends State<ANotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<ANotesCubit>(context).fetchAllANotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'مشاريع نظم',
            icon: Icons.search,
          ),
          Expanded(
            child: ANotesListView(),
          ),
        ],
      ),
    );
  }
}
