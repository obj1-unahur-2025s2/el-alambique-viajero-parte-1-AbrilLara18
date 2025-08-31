import recuerdos.*

object luke {
  var lugaresVistos = 0
  var vehiculoUsado = alambiqueVeloz
  var ultimoRecuerdo = ninguno.recuerdo()
  
  method cantLugaresVisitados() = lugaresVistos
  
  method ultimoRecuerdo() = ultimoRecuerdo
  
  method viajarA(destino) {
    if (destino.puedeViajar(vehiculoUsado)) {
      ultimoRecuerdo = destino.recuerdo()
      lugaresVistos += 1
      vehiculoUsado.gastarCombustible(50)
    }
  }
  
  method cambiarDeAuto(autoNuevo) {
    vehiculoUsado = autoNuevo
  }
}

object alambiqueVeloz {
  var combustible = 100
  var velocidad = 100
  
  method velocidad() = velocidad
  
  method gastarCombustible(cantidad) {
    combustible -= cantidad
  }
  
  method bajarVelocidad(cantidad) {
    velocidad -= cantidad
  }
  
  method gangster() = 0
  
  method combustible() = combustible
}

object superChatarraEspecial {
  var municiones = 50
  var velocidad = 100
  
  method velocidad() = velocidad
  
  method gastarCombustible(cantidad) {
    municiones -= cantidad / 2
  }
  
  method combustible() = municiones * 2
  
  method bajarVelocidad(cantidad) {
    velocidad -= cantidad
  }
  
  method gangster() = 0
  
  method cargarMunicion(cant) {
    municiones += cant
  }
}

object antiguallaBlindada {
  var combustible = 100
  var gangster = 0
  var velocidad = 100
  
  method gastarCombustible(cantidad) {
    combustible -= cantidad
  }
  
  method combustible() = combustible
  
  method bajarVelocidad(cantidad) {
    gangster += cantidad
    velocidad -= gangster
  }
  
  method gangster() = gangster
  
  method velocidad() = velocidad
}

object superConvertible {
  var combustible = vehiculoTransformado.combustible()
  var velocidad = vehiculoTransformado.velocidad()
  var vehiculoTransformado = antiguallaBlindada
  var gangster = 0
  
  method transformarseA(nuevoVehiculo) {
    vehiculoTransformado = nuevoVehiculo
    combustible = vehiculoTransformado.combustible()
    velocidad = vehiculoTransformado.velocidad()
    gangster = vehiculoTransformado.gangster()
  }
  
  method gastarCombustible(cantidad) {
    combustible -= cantidad
  }
  
  method bajarVelocidad(cantidad) {
    gangster += cantidad
    velocidad -= gangster
  }
  
  method combustible() = combustible
  
  method velocidad() = velocidad
}