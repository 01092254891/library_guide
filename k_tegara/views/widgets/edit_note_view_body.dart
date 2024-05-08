import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list-view.dart';

class EditTegaraViewBody extends StatefulWidget {
  const EditTegaraViewBody({Key? key, required this.tegara}) : super(key: key);

  final TegaraModel tegara;

  @override
  State<EditTegaraViewBody> createState() => _EditTegaraViewBodyState();
}

class _EditTegaraViewBodyState extends State<EditTegaraViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.tegara.title = title ?? widget.tegara.title;
              widget.tegara.subTitle = content ?? widget.tegara.subTitle;
              widget.tegara.save();
              BlocProvider.of<TegaraCubit>(context).fetchAllTegara();
              Navigator.pop(context);
            },
            title: 'EditBooks ',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.tegara.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.tegara.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          EditTegaraColorsList(
            tegara: widget.tegara,
          ),
        ],
      ),
    );
  }
}
