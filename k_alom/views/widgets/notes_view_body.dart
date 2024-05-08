import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class AlomViewBody extends StatefulWidget {
  const AlomViewBody({Key? key}) : super(key: key);

  @override
  State<AlomViewBody> createState() => _AlomViewBodyState();
}

class _AlomViewBodyState extends State<AlomViewBody> {
  @override
  void initState() {
    BlocProvider.of<AlomCubit>(context).fetchAllAlom();
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
            title: 'كتب العلوم ',
            icon: Icons.search,
          ),
          Expanded(
            child: AlomListView(),
          ),
        ],
      ),
    );
  }
}
