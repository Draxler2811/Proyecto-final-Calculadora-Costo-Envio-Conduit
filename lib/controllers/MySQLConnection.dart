import 'package:mysql1/mysql1.dart';

class MySQLConnection {
  static final MySQLConnection _singleton = MySQLConnection._internal();

  late MySqlConnection _connection;

  factory MySQLConnection() {
    return _singleton;
  }

  MySQLConnection._internal();

  Future<void> connect({
    required String host,
    required int port,
    required String user,
    required String password,
    required String db,
  }) async {
    final settings = ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db,
    );

    try {
      _connection = await MySqlConnection.connect(settings);
      print('Conexión exitosa a la base de datos MySQL.');
    } catch (e) {
      print('Error al conectar a la base de datos MySQL: $e');
      rethrow;
    }
  }

  Future<void> close() async {
    await _connection.close();
    print('Conexión cerrada.');
  }

  Future<Results> query(String query, [List<dynamic>? values]) async {
    return await _connection.query(query, values);
  }
}
