import 'package:calculadora_a_costo_envio_conduit/calculadora_a_costo_envio_conduit.dart';

import '../Models/paquete.dart';
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

  @Operation.post()
  Future<Response> crearPaquete(@Bind.body() Paquete paquete) async {
    try {
      await connection.query(
          'INSERT INTO paquetes (nombre, peso, largo, ancho, alto, destino) VALUES (?, ?, ?, ?, ?, ?)',
          [paquete.nombre, paquete.peso, paquete.largo, paquete.ancho, paquete.alto, paquete.destino]);
      return Response.ok({'message': 'Paquete creado exitosamente.'});
    } catch (e) {
      return Response.serverError(body: {'error': e.toString()});
    }
  }

  @Operation.put('id')
  Future<Response> actualizarPaquete(@Bind.path('id') int id, @Bind.body() Paquete paquete) async {
    try {
      await connection.query(
          'UPDATE paquetes SET nombre = ?, peso = ?, largo = ?, ancho = ?, alto = ?, destino = ? WHERE id = ?',
          [paquete.nombre, paquete.peso, paquete.largo, paquete.ancho, paquete.alto, paquete.destino, id]);
      return Response.ok({'message': 'Paquete actualizado exitosamente.'});
    } catch (e) {
      return Response.serverError(body: {'error': e.toString()});
    }
  }

  @Operation.delete('id')
  Future<Response> eliminarPaquete(@Bind.path('id') int id) async {
    try {
      await connection.query('DELETE FROM paquetes WHERE id = ?', [id]);
      return Response.ok({'message': 'Paquete eliminado exitosamente.'});
    } catch (e) {
      return Response.serverError(body: {'error': e.toString()});
    }
  }
}