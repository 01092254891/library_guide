import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class AAlomViewBody extends StatefulWidget {
  const AAlomViewBody({Key? key}) : super(key: key);

  @override
  State<AAlomViewBody> createState() => _AAlomViewBodyState();
}

class _AAlomViewBodyState extends State<AAlomViewBody> {
  @override
  void initState() {
    BlocProvider.of<AAlomCubit>(context).fetchAllAAlom();
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
            title: 'مراجع أعمال ',
            icon: Icons.search,
          ),
          Expanded(
            child: AAlomListView(),
          ),
        ],
      ),
    );
  }
}
