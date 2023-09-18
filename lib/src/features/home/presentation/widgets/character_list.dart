import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:star_wars_app/src/routes/app_routes.dart';

import '../controllers/people_controller.dart';

class CharacterList extends ConsumerWidget {
  const CharacterList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const itemSize = 75.0;
    final peopleData = ref.watch(peopleControllerProvider);

    return peopleData.when(
      data: (people) {
        final results = people?.results ?? [];

        return ListView.builder(
          itemCount: results.length,
          itemBuilder: (context, index) {
            final character = results[index];

            return InkWell(
              onTap: () => context.go(
                '/${AppRoutes.details.path}',
                extra: character,
              ),
              child: Card(
                color: Colors.blue,
                child: SizedBox(
                  height: itemSize,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        character.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        character.gender,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
