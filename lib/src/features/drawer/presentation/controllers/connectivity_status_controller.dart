import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connectivity_status_controller.g.dart';

@Riverpod(keepAlive: true)
class ConnectivityStatusController extends _$ConnectivityStatusController {
  @override
  bool build() {
    return true;
  }

  void changeStatus() {
    state = !state;
  }
}
