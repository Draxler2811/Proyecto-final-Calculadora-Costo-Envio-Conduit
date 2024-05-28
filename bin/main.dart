import 'package:calculadora_a_costo_envio_conduit/calculadora_a_costo_envio_conduit.dart';

Future main() async {
  final app = Application<CalculadoraACostoEnvioConduitChannel>()
    ..options.configurationFilePath = "config.yaml"
    ..options.port = 8888;

  await app.startOnCurrentIsolate();

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}
