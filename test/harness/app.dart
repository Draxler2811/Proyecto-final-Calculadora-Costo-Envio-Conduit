import 'package:calculadora_a_costo_envio_conduit/calculadora_a_costo_envio_conduit.dart';
import 'package:conduit_test/conduit_test.dart';

export 'package:calculadora_a_costo_envio_conduit/calculadora_a_costo_envio_conduit.dart';
export 'package:conduit_test/conduit_test.dart';
export 'package:test/test.dart';
export 'package:conduit_core/conduit_core.dart';

/// A testing harness for calculadora_a_costo_envio_conduit.
///
/// A harness for testing an conduit application. Example test file:
///
///         void main() {
///           Harness harness = Harness()..install();
///
///           test("GET /path returns 200", () async {
///             final response = await harness.agent.get("/path");
///             expectResponse(response, 200);
///           });
///         }
///
class Harness extends TestHarness<CalculadoraACostoEnvioConduitChannel> {
  @override
  Future onSetUp() async {}

  @override
  Future onTearDown() async {}
}
