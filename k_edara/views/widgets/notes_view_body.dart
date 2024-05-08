import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class EdaraViewBody extends StatefulWidget {
  const EdaraViewBody({Key? key}) : super(key: key);

  @override
  State<EdaraViewBody> createState() => _EdaraViewBodyState();
}

class _EdaraViewBodyState extends State<EdaraViewBody> {
  @override
  void initState() {
    BlocProvider.of<EdaraCubit>(context).fetchAllEdara();
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
            title: ' كتب اداره',
            icon: Icons.search,
          ),
          Expanded(
            child: EdaraListView(),
          ),
        ],
      ),
    );
  }
}
