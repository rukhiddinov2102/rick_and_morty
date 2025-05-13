import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/core/theme/bloc/theme_bloc.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<ThemeBloc>().toggleTheme();
              },
              icon:
                  context.watch<ThemeBloc>().state.themeMode == ThemeMode.light
                      ? const Icon(Icons.dark_mode)
                      : const Icon(Icons.light_mode))
        ],
        centerTitle: true,
        title: Text("Characters Page"),
      ),
      body: Center(
        child: Text('Characters'),
      ),
    );
  }
}
