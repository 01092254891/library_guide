import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../test_cubit/notes_cubit/notes_cubit.dart';
import 'book_list_view.dart';
import 'custom_appbar.dart';

class ABookViewBody extends StatefulWidget {
  const ABookViewBody({Key? key}) : super(key: key);

  @override
  State<ABookViewBody> createState() => _ABookViewBodyState();
}

class _ABookViewBodyState extends State<ABookViewBody> {
  @override
  void initState() {
    BlocProvider.of<ABookCubit>(context).fetchAllABook();
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
            title: 'محاسبه',
            icon: Icons.search,
          ),
          Expanded(
            child: ABookListView(),
          ),
        ],
      ),
    );
  }
}
