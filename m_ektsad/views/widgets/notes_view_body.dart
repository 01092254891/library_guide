import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class SNotesViewBody extends StatefulWidget {
  const SNotesViewBody({Key? key}) : super(key: key);

  @override
  State<SNotesViewBody> createState() => _SNotesViewBodyState();
}

class _SNotesViewBodyState extends State<SNotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<SNotesCubit>(context).fetchAllSNotes();
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
            title: 'مراجع اقتصاد',
            icon: Icons.search,
          ),
          Expanded(
            child: SNotesListView(),
          ),
        ],
      ),
    );
  }
}
