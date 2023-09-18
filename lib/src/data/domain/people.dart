import 'result.dart';

class People {
  const People({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'count': count,
      'next': next,
      'previous': previous,
      'results': results.map((e) => e.toJson()).toList(),
    };
  }

  final int? count;
  final String? next;
  final String? previous;
  final List<Result> results;
}
