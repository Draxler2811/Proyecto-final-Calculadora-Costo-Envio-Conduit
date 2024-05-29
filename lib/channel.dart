import 'package:calculadora_a_costo_envio_conduit/calculadora_a_costo_envio_conduit.dart';

import 'controllers/paquete_controller.dart';
import 'envio_api.dart';

class CalculadoraACostoEnvioConduitChannel extends ApplicationChannel {
  late MySQLConnection connection;

  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
    
    connection = MySQLConnection();
    await connection.connect(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: '1234',
      db: 'envio_calculadora',
    );
  }

  @override
  Controller get entryPoint {
    final router = Router();

    // Vincula la ruta "/paquetes" al controlador de paquetes
    router.route("/paquetes").link(() => PaquetesController(connection));

    return router;
  }
}
