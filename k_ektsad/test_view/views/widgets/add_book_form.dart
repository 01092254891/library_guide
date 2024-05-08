import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../test_cubit/add_note_cubit/add_note_cubit.dart';
import '../../../test_model/book_model.dart';
import 'color_list_view.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddBookForm extends StatefulWidget {
  const AddBookForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddBookForm> createState() => _AddBookFormState();
}

class _AddBookFormState extends State<AddBookForm> {
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
          BlocBuilder<AddBookCubit, AddBookState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddBookLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();

                    var formattedCurrentDate =
                        DateFormat('dd-mm-yyyy').format(currentDate);
                    var bookModel = BookModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedCurrentDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddBookCubit>(context).addBook(bookModel);
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
