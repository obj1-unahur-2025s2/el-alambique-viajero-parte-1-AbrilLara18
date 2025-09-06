import elAlambiqueViajero.*

object paris {
  var combustibleNecesario=0
  method recuerdo() = "llaveroEifel"
  method combustibleNecesario(cantidad){
    combustibleNecesario=cantidad
  }
  method puedeViajar(vehiculo){
    return vehiculo.combustible() > combustibleNecesario
  }
}

object buenosAires {
  var recuerdo="mate"
  var velocidadNecesaria=50
  method recuerdo() {
    return recuerdo
  }
  method nuevoPresidente(leGustaLaYerba) {
    if (leGustaLaYerba) {
      recuerdo="mate con yerba"
    }
    else{
      recuerdo="mate sin yerba "
    }
  }
  method velocidadNecesaria(cant){
    velocidadNecesaria=cant
  }
  method puedeViajar(vehiculo){
    return vehiculo.velocidad()>velocidadNecesaria
  } 
}


object bagdad {
  var recuerdo = "petroleoCrudo"
  
  method recuerdo() = recuerdo
  
  method cambiarRecuerdoA(nuevoRecuerdo) {
    recuerdo = nuevoRecuerdo
  }
  
  method puedeViajar(vehiculo) {
    return true
  }
}

object lasVegas {
  var recuerdo = paris.recuerdo()
  var paisConmemorado=paris
  method conmemorarA(pais) {
    recuerdo = pais.recuerdo()
    paisConmemorado=pais
  }
  
  method recuerdo() = recuerdo
  
  method puedeViajar(vehiculo) {
    return paisConmemorado.puedeViajar(vehiculo)
  }
}

object italia {
  var velocidadNecesaria=50
  method recuerdo() = "miniTorrePizza"
  method velocidadNecesaria(cant){
    velocidadNecesaria=cant
  }
    method puedeViajar(vehiculo){
    return vehiculo.velocidad()>velocidadNecesaria
  } 
}

object ninguno {
  method recuerdo() = "nada"
  
  method puedeViajar(vehiculo) {
    return true
  }
}