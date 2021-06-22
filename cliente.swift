import Foundation


class cliente{
    var nombre:String
    var correo:String
    var username:String
    var password:String
    var medidores:Array<medidor>

    init (nombre:String, correo:String, username:String, password:String){
        self.nombre = nombre
        self.correo = correo
        self.username = username
        self.password = password
        self.medidores = Array<medidor>()
    }

    func mostrar_medidores() -> Void {
        for medi in medidores {
            print("Id: \(medi.id)")
            print("Plan: \(medi.plan.nombre)")
            print("Volteos: \(medi.cantV)")
        }
    }

    func mostrar_cobros(ide:String) -> Void {
        for me in medidores{
            if(me.id == ide){
                for cob in me.cobros {
                print("Id: \(cob.identificador)")
                print("Estado: \(cob.estado)")
                print("Fecha: \(cob.fecha)")
                print("Monto: \(cob.monto)")
                }
            }
        }
    }



}


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

}

class Plan{
    var nombre:String
    var cobroE:Int
    var CobroPorVolteo:Int
    var maximoV:Int

    init(nombre:String, cobroE:Int, CobroPorVolteo:Int, maximoV:Int){
        self.nombre = nombre
        self.cobroE = cobroE
        self.CobroPorVolteo = CobroPorVolteo
        self.maximoV = maximoV
    }
}


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



class agente{
    var nombre:String
    var user:String
    var password:String
    var apelaciones:Array<apelacion> = Array<apelacion>()

    init(nombre:String, user:String, password:String, apelaciones:Array<apelacion>){
        self.nombre = nombre
        self.user = user
        self.password = password
        self.apelaciones = apelaciones
    }

    func ver_cobros() -> Void{

    }
}

class apelacion{
    var idApelacion:Int
    var cliente:String
    var medidor:String
    var descripcion:String

    init(idApelacion:Int, cliente:String, medidor:String, descripcion:String){
        self.cliente = cliente
        self.medidor = medidor
        self.descripcion = descripcion
        self.idApelacion = idApelacion
    }
}



