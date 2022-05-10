import 'package:excellence_teams_frontend/app/setup_and_run.dart';
import 'package:excellence_teams_frontend/services/services_injection.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupServicesInjection();

  setupAndRun();
}
