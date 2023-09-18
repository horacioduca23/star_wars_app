import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/strings.dart';
import '../controllers/pagination_controller.dart';

class AppBottomNavigationBar extends ConsumerWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var paginationController = ref.watch(paginationControllerProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 50.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          paginationController > 1
              ? ElevatedButton(
                  onPressed: () {
                    ref
                        .read(paginationControllerProvider.notifier)
                        .previousPage();
                  },
                  child: const Text(Strings.previous),
                )
              : const ElevatedButton(
                  onPressed: null,
                  child: Text(Strings.previous),
                ),
          Text(
            '${Strings.page}$paginationController',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(paginationControllerProvider.notifier).nextPage();
            },
            child: const Text(Strings.next),
          ),
        ],
      ),
    );
  }
}
