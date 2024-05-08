import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class TegaraViewBody extends StatefulWidget {
  const TegaraViewBody({Key? key}) : super(key: key);

  @override
  State<TegaraViewBody> createState() => _TegaraViewBodyState();
}

class _TegaraViewBodyState extends State<TegaraViewBody> {
  @override
  void initState() {
    BlocProvider.of<TegaraCubit>(context).fetchAllTegara();
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
            title: 'كتب تجاره',
            icon: Icons.search,
          ),
          Expanded(
            child: TegaraListView(),
          ),
        ],
      ),
    );
  }
}
