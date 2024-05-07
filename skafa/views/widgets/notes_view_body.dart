import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class SkafaViewBody extends StatefulWidget {
  const SkafaViewBody({Key? key}) : super(key: key);

  @override
  State<SkafaViewBody> createState() => _SkafaViewBodyState();
}

class _SkafaViewBodyState extends State<SkafaViewBody> {
  @override
  void initState() {
    BlocProvider.of<SkafaCubit>(context).fetchAllSkafa();
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
            title: 'ثقافة عامة',
            icon: Icons.search,
          ),
          Expanded(
            child: SkafaListView(),
          ),
        ],
      ),
    );
  }
}
