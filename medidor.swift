import Foundation

class medidor{
    var id:String
    var plan:Plan
    var cantV:Int
    var cobros:Array<cobro>

    init(id:String, plan:Plan){
        self.id = id
        self.plan = plan
        self.cantV = 0
        self.cobros = Array<cobro>()
    }


    func agregarCobros(ident:Int, estado:String, fecha:Date, monto:Int){
        let c = cobro(identificador: ident,estado: estado,fecha: fecha,monto: monto)
        cobros.append(c)
    }

}