import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class MAlomViewBody extends StatefulWidget {
  const MAlomViewBody({Key? key}) : super(key: key);

  @override
  State<MAlomViewBody> createState() => _MAlomViewBodyState();
}

class _MAlomViewBodyState extends State<MAlomViewBody> {
  @override
  void initState() {
    BlocProvider.of<MAlomCubit>(context).fetchAllMAlom();
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
            title: "مراجع علوم",
            icon: Icons.search,
          ),
          Expanded(
            child: MAlomListView(),
          ),
        ],
      ),
    );
  }
}
