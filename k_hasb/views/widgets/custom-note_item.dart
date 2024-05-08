import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import '../edit_note_view.dart';

class HasbItem extends StatelessWidget {
  const HasbItem({Key? key, required this.hasb}) : super(key: key);

  final HasbModel hasb;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return EditHasbView(
              hasb: hasb,
            );
          }),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(hasb.color),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.only(left: 16, top: 24, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                hasb.title,
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  hasb.subTitle,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(.4),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  hasb.delete();

                  BlocProvider.of<HasbCubit>(context).fetchAllHasb();
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                hasb.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
