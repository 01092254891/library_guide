import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../cubits/add_note_cubit/add_note_cubit.dart';
import '../../models/note_model.dart';
import 'color_list_view.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddKanonForm extends StatefulWidget {
  const AddKanonForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddKanonForm> createState() => _AddKanonFormState();
}

class _AddKanonFormState extends State<AddKanonForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          SizedBox(
            height: 32,
          ),
          ColorsListView(),
          SizedBox(
            height: 32,
          ),
          BlocBuilder<AddKanonCubit, AddKanonState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddKanonLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();

                    var formattedCurrentDate =
                        DateFormat('dd-mm-yyyy').format(currentDate);
                    var kanonModel = KanonModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedCurrentDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddKanonCubit>(context)
                        .addKanon(kanonModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
