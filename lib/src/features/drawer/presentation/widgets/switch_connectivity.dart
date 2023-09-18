import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/connectivity_status_controller.dart';

class SwitchConnectivity extends ConsumerWidget {
  const SwitchConnectivity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var connectionStatus = ref.watch(connectivityStatusControllerProvider);

    return Switch(
      value: connectionStatus,
      onChanged: (value) {
        ref.read(connectivityStatusControllerProvider.notifier).changeStatus();
      },
    );
  }
}
