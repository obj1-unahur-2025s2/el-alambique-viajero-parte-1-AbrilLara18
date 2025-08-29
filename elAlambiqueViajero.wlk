import recuerdos.*
object alambiqueVeloz {
  var lugaresVistos=0
  var ultimoRecuerdo=ninguno.recuerdo()
  var combustible=0
  method velocidad()=100
  method cantLugares()=lugaresVistos
  method ultimoRecuerdo() =ultimoRecuerdo
  method viajarA(destino) {
    if(destino.puedeViajar(self)){
    ultimoRecuerdo=destino.recuerdo()
    lugaresVistos+=1
    combustible-=50}
  }
  method combustible() =combustible
  
}
object superChatarraEspecial {
  var lugaresVistos=0
  var ultimoRecuerdo=ninguno.recuerdo()
  method velocidad() =100
  var municiones=30
  var combustible=0
  method cantLugares()=lugaresVistos
  method ultimoRecuerdo() =ultimoRecuerdo
  method viajarA(destino) {
    if(destino.puedeViajar(self)){
    ultimoRecuerdo=destino.recuerdo()
    lugaresVistos+=1
    combustible-=50}
  }
  method combustible()=municiones*2
  method cargarMunicion(cant) {
    municiones=cant
  }
}
object antiguallaBlindada {
  var lugaresVistos=0
  var ultimoRecuerdo=ninguno.recuerdo()
  var combustible=0
  var gangster=0
  var velocidad=100
  method cantLugares()=lugaresVistos
  method ultimoRecuerdo() =ultimoRecuerdo
  method viajarA(destino) {
    if(destino.puedeViajar(self)){
    ultimoRecuerdo=destino.recuerdo()
    lugaresVistos+=1
    combustible-=50}

  }
  method combustible() =combustible
  method ponerMasGangster(cantidad) {
    gangster+=cantidad
    velocidad=velocidad-gangster  
  }
  method velocidad()=velocidad

}
object superConvertible {
  var vehiculoTransformado=antiguallaBlindada
  method transformarseA(nuevoVehiculo){
    vehiculoTransformado=nuevoVehiculo
  }
}

