import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/i_people_data_source.dart';
import '../../data/datasources/people_data_source.dart';
import '../../data/repositories/people_repository.dart';

part 'providers.g.dart';

@riverpod
IPeopleDataSource peopleDataSource(
  PeopleDataSourceRef ref,
) {
  return PeopleDataSource();
}

@riverpod
PeopleRepository peopleRepository(PeopleRepositoryRef ref) {
  final dataSource = ref.watch(peopleDataSourceProvider);

  return PeopleRepository(
    peopleDataSource: dataSource,
  );
}
