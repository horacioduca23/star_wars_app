import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pagination_controller.g.dart';

@riverpod
class PaginationController extends _$PaginationController {
  @override
  int build() {
    return state = 1;
  }

  void nextPage() {
    state++;
  }

  void previousPage() {
    if (state > 1) {
      state--;
    }
  }
}
