// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/alert_flush_bar.dart';
import '../../../../constants/strings.dart';
import '../controllers/planets_controller.dart';
import '../controllers/post_report_controller.dart';
import '../../../drawer/presentation/controllers/connectivity_status_controller.dart';
import '../../../drawer/presentation/widgets/app_drawer.dart';
import '../../../../data/domain/result.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({
    super.key,
    required this.result,
  });

  final Result result;

  /// This method returns the ID value from current character
  /// obtained from the API URL path.
  ///
  /// For example: in https://swapi.dev/api/people/1/ case
  /// It will return "1".
  int _getPlanetId() {
    int? id;
    final urlPath = result.homeworld;

    List<String> urlParts = urlPath.split("/");

    if (urlParts.length >= 2) {
      String planetId = urlParts[urlParts.length - 2];
      id = int.parse(planetId);
    } else {
      throw Exception(Strings.errorParsingIdValue);
    }
    return id;
  }

  String _getPlanetName(WidgetRef ref) {
    final planetId = _getPlanetId();
    final planet = ref
        .watch(
          planetsControllerProvider(planetId),
        )
        .value;

    return planet?.name ?? '';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var connectionStatus = ref.watch(connectivityStatusControllerProvider);
    final planetName = _getPlanetName(ref);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ],
        title: Text('${result.name} ${Strings.details}'),
      ),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                result.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text('${Strings.birth}${result.birthYear}'),
              Text('${Strings.eyeColor}${result.eyeColor}'),
              Text('${Strings.gender}${result.gender}'),
              Text('${Strings.hairColor}${result.hairColor}'),
              Text('${Strings.height1}${result.height}'),
              Text('${Strings.homeWorld}$planetName'),
              Text('${Strings.mass}${result.mass}'),
              const SizedBox(height: 20),
              const Text(
                Strings.starships,
              ),
              const SizedBox(height: 10),
              const Text(
                Strings.vehicles,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: connectionStatus == false
                      ? null
                      : () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text(Strings.reportSighting),
                                content: const Text(
                                  Strings.areYouSureYouWantToReport,
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () async {
                                      final response = await ref
                                          .read(postReportControllerProvider
                                              .notifier)
                                          .postReport(
                                            characterName: result.name,
                                            url: result.url,
                                          );
                                      context.pop();

                                      response == true
                                          ? AlertFlushBar.buildSuccessSnackbar(
                                              context,
                                              Strings
                                                  .reportSubmittedSuccessfully,
                                            )
                                          : AlertFlushBar.buildErrorSnackbar(
                                              context,
                                              Strings.errorTryingToSendReport,
                                            );
                                    },
                                    child: const Text(Strings.report),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      context.pop();
                                    },
                                    child: const Text(Strings.cancel),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                  child: const Text(Strings.reportSighting),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
