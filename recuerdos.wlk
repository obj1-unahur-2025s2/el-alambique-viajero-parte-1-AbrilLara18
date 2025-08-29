import elAlambiqueViajero.*

object paris {
  method recuerdo()="llaveroEifel"
  method puedeViajar(vehiculo) {
    return vehiculo.combustible() >0
  }
}
object buenosAires {
  var yerba=true  
  method recuerdo()="mate" + yerba
  method puedeViajar(vehiculo){
    return vehiculo.velocidad()
  }
}
object bagdad {
  var recuerdo= "petroleoCrudo"
  method recuerdo()=recuerdo
  method cambiarRecuerdoA(nuevoRecuerdo) {
    recuerdo= nuevoRecuerdo
  }
  method puedeViajar(vehiculo) {
  }
}
object lasVegas {
  var recuerdo=paris.recuerdo()
  method conmemorarA(pais) {
    recuerdo=pais.recuerdo()
  }
  method recuerdo()=recuerdo
  method puedeViajar(vehiculo) {
    recuerdo.puedeViajar(vehiculo)
  }
}

object italia {
  method recuerdo()="miniTorrePizza"
    method puedeViajar(vehiculo){
    return vehiculo.velocidad()
  }
}

object ninguno {
  method recuerdo()="nada"
  method puedeViajar(vehiculo) {
  }
}