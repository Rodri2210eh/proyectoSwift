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


class cobro{
    var identificador:Int
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
}

class apelacion{
    var cliente:String
    var medidor:String
    var descripcion:String

    init(cliente:String, medidor:String, descripcion:String){
        self.cliente = cliente
        self.medidor = medidor
        self.descripcion = descripcion
    }
}