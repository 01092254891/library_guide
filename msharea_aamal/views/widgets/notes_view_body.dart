import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class MHasbViewBody extends StatefulWidget {
  const MHasbViewBody({Key? key}) : super(key: key);

  @override
  State<MHasbViewBody> createState() => _MHasbViewBodyState();
}

class _MHasbViewBodyState extends State<MHasbViewBody> {
  @override
  void initState() {
    BlocProvider.of<MHasbCubit>(context).fetchAllMHasb();
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
            title: 'مشاريع اعمال',
            icon: Icons.search,
          ),
          Expanded(
            child: MHasbListView(),
          ),
        ],
      ),
    );
  }
}
