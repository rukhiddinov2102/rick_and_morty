import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/features/characters/presentation/pages/characters_page.dart';
import 'package:sample/features/home/presentation/pages/home_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) =>  HomePage(),
      routes: [
        GoRoute(
          path: '/characters',
          name: 'characters',
          builder: (context, state) => const CharactersPage(),
        ),
         GoRoute(
          path: '/favorites',
          name: 'favorites',
          builder: (context, state) => const CharactersPage(),
        ),
        
      ]
    ),
    // GoRoute(
    //   path: '/favorites',
    //   name: 'favorites',
    //   // builder: (context, state) => const FavoritePage(),
    // ),
    // GoRoute(
    //   path: '/detail',
    //   name: 'detail',
    //   // builder: (context, state) {
    //   //   // final character = state.extra as CharacterEntity;
    //   //   // return CharacterDetailPage(character: character);
    //   // },
    // ),
  ],
);
