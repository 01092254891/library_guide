import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class HasbViewBody extends StatefulWidget {
  const HasbViewBody({Key? key}) : super(key: key);

  @override
  State<HasbViewBody> createState() => _HasbViewBodyState();
}

class _HasbViewBodyState extends State<HasbViewBody> {
  @override
  void initState() {
    BlocProvider.of<HasbCubit>(context).fetchAllHasb();
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
            title: 'كتب حاسب آلي',
            icon: Icons.search,
          ),
          Expanded(
            child: HasbListView(),
          ),
        ],
      ),
    );
  }
}
