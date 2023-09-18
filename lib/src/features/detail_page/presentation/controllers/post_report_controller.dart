import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../home/providers.dart';
part 'post_report_controller.g.dart';

@riverpod
class PostReportController extends _$PostReportController {
  @override
  Future<bool> build() async {
    return false;
  }

  Future<bool> postReport({
    required String characterName,
    required String url,
  }) async {
    bool response = false;
    try {
      var peopleRepository = ref.read(peopleRepositoryProvider);
      response = await peopleRepository.postReport(
        characterName: characterName,
        url: url,
      );
    } on Exception catch (ex, stack) {
      state = AsyncValue.error(ex, stack);
    }

    return response;
  }
}
