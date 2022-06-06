import 'package:excellence_teams_frontend/services/services.dart';
import 'package:nv_golden/nv_golden.dart';

extension GoldenWrapper on NvWidgetWrapper {
  void withEnv(EnvironmentHandler environment) => add(
        (child) => RepositoryProvider(
          create: (_) => environment,
          child: child,
        ),
      );
}
