import elAlambiqueViajero.*

object paris {
  method recuerdo() = "llaveroEifel"
  
  method puedeViajar(vehiculo) = vehiculo.combustible() > 0
}

object buenosAires {
  var yerba = true
  
  method recuerdo() {
    var recuerdo = "mate"
    if (yerba) {
      recuerdo = "mate con yerba"
    }
    return recuerdo
  }
  
  method puedeViajar(vehiculo) = vehiculo.velocidad() > 80
  
  method hayYerba(nuevoValor) {
    yerba = nuevoValor
  }
}

object bagdad {
  var recuerdo = "petroleoCrudo"
  
  method recuerdo() = recuerdo
  
  method cambiarRecuerdoA(nuevoRecuerdo) {
    recuerdo = nuevoRecuerdo
  }
  
  method puedeViajar(vehiculo) = true
}

object lasVegas {
  var recuerdo = paris.recuerdo()
  var paisConmemorado = paris
  
  method conmemorarA(pais) {
    paisConmemorado = pais
    recuerdo = pais.recuerdo()
  }
  
  method recuerdo() = recuerdo
  
  method puedeViajar(vehiculo) {
    return paisConmemorado.puedeViajar(vehiculo)
  }
}

object italia {
  method recuerdo() = "miniTorrePizza"
  
  method puedeViajar(vehiculo) = vehiculo.velocidad() > 80
}

object ninguno {
  method recuerdo() = "nada"
  
  method puedeViajar(vehiculo) = true
}