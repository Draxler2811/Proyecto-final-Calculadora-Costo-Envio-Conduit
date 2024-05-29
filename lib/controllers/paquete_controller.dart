import 'package:calculadora_a_costo_envio_conduit/calculadora_a_costo_envio_conduit.dart';

import '../envio_api.dart';

class PaquetesController extends ResourceController {
  final MySQLConnection connection;

  PaquetesController(this.connection);

  @Operation.get()
  Future<Response> obtenerPaquetes() async {
    try {
      final results = await connection.query('SELECT * FROM paquetes');
      final List<Map<String, dynamic>> paquetes = [];
      for (var row in results) {
        paquetes.add(Map<String, dynamic>.from(row.fields));
      }
      return Response.ok(paquetes);
    } catch (e) {
      return Response.serverError(body: {'error': e.toString()});
    }
  }
}
