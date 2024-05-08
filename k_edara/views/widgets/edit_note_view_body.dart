import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list-view.dart';

class EditEdaraViewBody extends StatefulWidget {
  const EditEdaraViewBody({Key? key, required this.edara}) : super(key: key);

  final EdaraModel edara;

  @override
  State<EditEdaraViewBody> createState() => _EditEdaraViewBodyState();
}

class _EditEdaraViewBodyState extends State<EditEdaraViewBody> {
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
              widget.edara.title = title ?? widget.edara.title;
              widget.edara.subTitle = content ?? widget.edara.subTitle;
              widget.edara.save();
              BlocProvider.of<EdaraCubit>(context).fetchAllEdara();
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
            hint: widget.edara.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.edara.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          EditEdaraColorsList(
            edara: widget.edara,
          ),
        ],
      ),
    );
  }
}
