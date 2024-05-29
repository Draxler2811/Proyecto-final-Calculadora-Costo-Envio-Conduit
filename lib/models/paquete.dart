import 'package:conduit_core/conduit_core.dart';

class Paquete extends ManagedObject<_Paquete> implements _Paquete {}

class _Paquete {
  @primaryKey
  int? id;

  @Column(nullable: false)
  String? nombre;

  @Column(nullable: false)
  double? peso;

  @Column(nullable: false)
  double? largo;

  @Column(nullable: false)
  double? ancho;

  @Column(nullable: false)
  double? alto;

  @Column(nullable: false)
  String? destino;
}
