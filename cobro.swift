import Foundation

class cobro{
    var identificador:Int
    var estado:String
    var fecha:Date = Date()
    var monto:Int

    init(identificador:Int, estado:String, fecha:Date, monto:Int){
        self.identificador = identificador
        self.fecha = fecha
        self.monto = monto
        self.estado = estado
    }
}
