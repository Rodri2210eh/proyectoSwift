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

    func mostrar_medidores() -> void {
        var i = 0
        while(i< medidores.count){
            var tmp = medidores[i]
            print("Id: \(tmp.id)")
            print("Plan: \(tmp.plan.nombre)")
            print("Volteos: \(tmp.cantV)")
        }
    }

    func mostrar_cobros(ide:String) ->void{
        var med:medidor
        var j = 0
        while(j < medidores.size){
            if(medidores[j].id == ide){
                med = medidores[i]
            }
            j += 1
        }
        var i = 0
        while(i < med.cobros.size){
            var temp = med.cobros
            print("Id: \(temp.identificador)")
            print("Estado: \(temp.estado)")
            print("Fecha: \(tmp.fecha)")
            print("Monto: \(tmp.monto)")
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
        cantV = 0
        var cobros = Array<cobro>()
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
    var fecha:Date
    var monto:Int

    init(identificador:Int, fecha:Date, monto:Int){
        self.identificador = identificador
        self.fecha = fecha
        self.monto = monto
    }
}



class agente{
    var nombre:String
    var user:String
    var password:String
    var apelaciones:Array<apelacion>

    init(nombre:String, user:String, password:String, apelaciones:Array<apelacion>){
        self.nombre = nombre
        self.user = user
        self.password = password
        self.apelaciones = apelaciones
    }

    func ver_cobros() -> void{

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
    }
}