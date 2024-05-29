// import 'dart:async';
// import 'package:calculadora_a_costo_envio_conduit/calculadora_a_costo_envio_conduit.dart';

// class Migration1 extends Migration {
//   @override
//   Future upgrade() async {
//     database.createTable(SchemaTable("_Paquete", [
//       SchemaColumn("id", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: true),
//       SchemaColumn("peso", ManagedPropertyType.doublePrecision, isNullable: false),
//       SchemaColumn("largo", ManagedPropertyType.doublePrecision, isNullable: false),
//       SchemaColumn("ancho", ManagedPropertyType.doublePrecision, isNullable: false),
//       SchemaColumn("alto", ManagedPropertyType.doublePrecision, isNullable: false),
//       SchemaColumn("destino", ManagedPropertyType.string, isNullable: false),
//     ]));
//   }

//   @override
//   Future downgrade() async {
//     database.deleteTable("_Paquete");
//   }

//   @override
//   Future seed() async {}
// }
