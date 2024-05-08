import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class MEdaraViewBody extends StatefulWidget {
  const MEdaraViewBody({Key? key}) : super(key: key);

  @override
  State<MEdaraViewBody> createState() => _MEdaraViewBodyState();
}

class _MEdaraViewBodyState extends State<MEdaraViewBody> {
  @override
  void initState() {
    BlocProvider.of<MEdaraCubit>(context).fetchAllMEdara();
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
            title: 'مراجع اداره',
            icon: Icons.search,
          ),
          Expanded(
            child: MEdaraListView(),
          ),
        ],
      ),
    );
  }
}
