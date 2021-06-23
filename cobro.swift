import Foundation

class cobro{
    // Atributos
    var identificador:Int
    var estado:String
    var fecha:Date = Date()
    var monto:Int

    // Initializer
    init(identificador:Int, estado:String, fecha:Date, monto:Int){
        self.identificador = identificador
        self.fecha = fecha
        self.monto = monto
        self.estado = estado
    }
}
