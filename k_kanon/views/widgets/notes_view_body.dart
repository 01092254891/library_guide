import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class KanonViewBody extends StatefulWidget {
  const KanonViewBody({Key? key}) : super(key: key);

  @override
  State<KanonViewBody> createState() => _KanonViewBodyState();
}

class _KanonViewBodyState extends State<KanonViewBody> {
  @override
  void initState() {
    BlocProvider.of<KanonCubit>(context).fetchAllKanon();
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
            title: 'كتب قانون',
            icon: Icons.search,
          ),
          Expanded(
            child: KanonListView(),
          ),
        ],
      ),
    );
  }
}
