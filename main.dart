import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_gradution_project/simple_bloc_observer.dart';
import 'package:my_gradution_project/skafa/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_gradution_project/skafa/models/note_model.dart';
import 'package:my_gradution_project/splash.dart';

import 'constants.dart';
import 'k_alom/cubits/notes_cubit/notes_cubit.dart';
import 'k_alom/models/note_model.dart';
import 'k_edara/cubits/notes_cubit/notes_cubit.dart';
import 'k_edara/models/note_model.dart';
import 'k_ektsad/test_cubit/notes_cubit/notes_cubit.dart';
import 'k_ektsad/test_model/book_model.dart';
import 'k_hasb/cubits/notes_cubit/notes_cubit.dart';
import 'k_hasb/models/note_model.dart';
import 'k_kanon/cubits/notes_cubit/notes_cubit.dart';
import 'k_kanon/models/note_model.dart';
import 'k_tegara/cubits/notes_cubit/notes_cubit.dart';
import 'k_tegara/models/note_model.dart';
import 'm_aamal/cubits/notes_cubit/notes_cubit.dart';
import 'm_aamal/models/note_model.dart';
import 'm_alom/cubits/notes_cubit/notes_cubit.dart';
import 'm_alom/models/note_model.dart';
import 'm_edara/cubits/notes_cubit/notes_cubit.dart';
import 'm_edara/models/note_model.dart';
import 'm_ektsad/cubits/notes_cubit/notes_cubit.dart';
import 'm_ektsad/models/note_model.dart';
import 'm_mohasba/test_cubit/notes_cubit/notes_cubit.dart';
import 'm_mohasba/test_model/book_model.dart';
import 'm_readeat/cubits/notes_cubit/notes_cubit.dart';
import 'm_readeat/models/note_model.dart';
import 'm_tegara/cubits/notes_cubit/notes_cubit.dart';
import 'm_tegara/models/note_model.dart';
import 'msharea/cubits/notes_cubit/notes_cubit.dart';
import 'msharea/models/note_model.dart';
import 'msharea_aamal/cubits/notes_cubit/notes_cubit.dart';
import 'msharea_aamal/models/note_model.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  // Hive.registerAdapter(NoteModelAdapter());
  Hive.registerAdapter(AlomModelAdapter());
  Hive.registerAdapter(BookModelAdapter());
  Hive.registerAdapter(EdaraModelAdapter());
  Hive.registerAdapter(HasbModelAdapter());
  Hive.registerAdapter(KanonModelAdapter());
  Hive.registerAdapter(TegaraModelAdapter());
  Hive.registerAdapter(SkafaModelAdapter());
  Hive.registerAdapter(MEdaraModelAdapter());
  Hive.registerAdapter(MHasbModelAdapter());
  Hive.registerAdapter(MTegaraModelAdapter());
  Hive.registerAdapter(MAlomModelAdapter());
  Hive.registerAdapter(AAlomModelAdapter());
  Hive.registerAdapter(ABookModelAdapter());
  Hive.registerAdapter(SHasbModelAdapter());
  Hive.registerAdapter(ANoteModelAdapter());
  Hive.registerAdapter(SNoteModelAdapter());

  await Hive.openBox<BookModel>(kBookBox);
//  await Hive.openBox<NoteModel>(kNotesBox);
  await Hive.openBox<EdaraModel>(kEdaraBox);
  await Hive.openBox<AlomModel>(kAlomBox);
  await Hive.openBox<HasbModel>(kHasbBox);
  await Hive.openBox<KanonModel>(kKanonBox);
  await Hive.openBox<TegaraModel>(kTegaraBox);
  await Hive.openBox<SkafaModel>(kSkafaBox);
  await Hive.openBox<MEdaraModel>(mkEdaraBox);
  await Hive.openBox<MHasbModel>(mkHasbBox);
  await Hive.openBox<MTegaraModel>(mkTegaraBox);
  await Hive.openBox<MAlomModel>(mkAlomBox);
  await Hive.openBox<AAlomModel>(akAlomBox);
  await Hive.openBox<ABookModel>(akBookBox);
  await Hive.openBox<SHasbModel>(skHasbBox);
  await Hive.openBox<ANoteModel>(akNotesBox);
  await Hive.openBox<SNoteModel>(skNotesBox);

  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookCubit(),
        ),
        //   BlocProvider(create: (context) => NotesCubit(), ),

        BlocProvider(
          create: (context) => EdaraCubit(),
        ),
        BlocProvider(
          create: (context) => AlomCubit(),
        ),
        BlocProvider(
          create: (context) => HasbCubit(),
        ),
        BlocProvider(
          create: (context) => KanonCubit(),
        ),
        BlocProvider(
          create: (context) => TegaraCubit(),
        ),
        BlocProvider(
          create: (context) => SkafaCubit(),
        ),
        BlocProvider(
          create: (context) => MEdaraCubit(),
        ),
        BlocProvider(
          create: (context) => MHasbCubit(),
        ),
        BlocProvider(
          create: (context) => MTegaraCubit(),
        ),
        BlocProvider(
          create: (context) => MAlomCubit(),
        ),
        BlocProvider(
          create: (context) => AAlomCubit(),
        ),
        BlocProvider(
          create: (context) => ABookCubit(),
        ),
        BlocProvider(
          create: (context) => SHasbCubit(),
        ),
        BlocProvider(
          create: (context) => ANotesCubit(),
        ),
        BlocProvider(
          create: (context) => SNotesCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: Splash(),
      ),
    );
  }
}
