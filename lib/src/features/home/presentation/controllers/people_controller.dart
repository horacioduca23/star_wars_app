import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'pagination_controller.dart';
import '../../providers.dart';
import '../../../../data/domain/people.dart';
part 'people_controller.g.dart';

@riverpod
class PeopleController extends _$PeopleController {
  @override
  Future<People?> build() async {
    final data = await fetchPeople();

    return data;
  }

  Future<People?> fetchPeople() async {
    People? people;

    try {
      final peopleRepository = ref.read(peopleRepositoryProvider);
      var currentPage = ref.watch(paginationControllerProvider);

      final result = await AsyncValue.guard(
          () => peopleRepository.fetchPeople(currentPage));
      result.whenData(
        (value) => people = value,
      );
    } on Exception catch (ex, stack) {
      state = AsyncValue.error(ex, stack);
    }

    return people;
  }
}
