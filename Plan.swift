import Foundation

class Plan{
    // Atributos
    var nombre:String
    var cobroE:Int
    var CobroPorVolteo:Int
    var maximoV:Int

    // Initializer
    init(nombre:String, cobroE:Int, CobroPorVolteo:Int, maximoV:Int){
        self.nombre = nombre
        self.cobroE = cobroE
        self.CobroPorVolteo = CobroPorVolteo
        self.maximoV = maximoV
    }
}