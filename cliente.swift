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
        var cont = 0
        for medi in medidores {
            print("\(cont).  Id: \(medi.id)  Plan: \(medi.plan.nombre)  Volteos: \(medi.cantV)")
            cont += 1
        }
    }

    func mostrar_cobros(indice:Int) -> Void {
        var ind = 0
        for me in medidores{
            if(ind == indice){
                print("Id: \(me.id)  Plan: \(me.plan.nombre)")
                var cont = 0
                for cob in me.cobros {
                    print("\(cont).  Id: \(cob.identificador)  Estado: \(cob.estado)  Fecha: \(cob.fecha)  Monto: \(cob.monto)")
                    cont += 1
                }
            }
            ind += 1
        }
    }

    func agregarMedidor(id:String, plan:Plan) -> Void{
        let m = medidor(id: id, plan: plan)
        medidores.append(m)
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


    func agregarCobros(ident:Int, estado:String, fecha:Date, monto:Int){
        let c = cobro(identificador: ident,estado: estado,fecha: fecha,monto: monto)
        cobros.append(c)
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

var clientes:Array<cliente> = Array<cliente>()

var agentes:Array<agente> = Array<agente>()


var t = 0
while(t == 0){

    print("Bienvenido")
    print("Ingrese 1 para iniciar como un cliente")
    print("Ingrese 2 para iniciar como un Agente")
    let eleccion1 = readLine()



    print("Ingrese su usuario... ")
    let usuar = readLine()
    print("Ingrese su contraseña... ")
    let passw = readLine()

    if (eleccion1 == "1"){
        for client in clientes{
            if(client.username == usuar){
                if(client.password == passw){
                    print("Bienvendo \(client.nombre)")
                    while(t == 0){
                        print("Elija una opcion para continuar")
                        print("1.   Ver medidores")
                        print("2.   Ver informacion de la cuenta")
                        print("3.   Realizar apelacion")
                        print("4.   Salir")
                        var r2 = readLine()
                        if(r2 == "1"){
                            print("Elija el medidor que desea ver")
                            client.mostrar_medidores()
                            print("z.   Salir")
                            r2 = readLine()
                            if(r2 != "z"){
                                let r3 = Int(r2!)
                                print("Los cobros del medidor son:")
                                client.mostrar_cobros(indice: r3!)
                                r2 = readLine()
                            }
                        }
                        else if(r2 == "2"){
                            print("Nombre: \(client.nombre)")
                            print("Correo Electronico: \(client.correo)")
                            print("Usuario: \(client.username)")
                            print("Password: *********")
                        }
                        else if(r2 == "3"){
                            print("Ingrese su usuario")
                            let ap1 = readLine()
                            print("Ingrese el Id del medidor")
                            let ap2 = readLine()
                            print("Ingrese el motivo de su apelacion")
                            let ap3 = readLine()
                            print("Su apelacion ha sido enviada, Usuario: \(ap1!), medidor: \(ap2!), motivo: \(ap3!)")
                        }
                        else if(r2 == "4"){
                            t = 4
                        }
                        else{
                            print("Entrada invalida, vuelva a intentarlo")
                        }
                    }
                }
                else{
                    print("Contraseña invalida, vuelva a intentarlo")
                }
            }
            else{
                print("Usuario invalido, vuelva a intentarlo")
            }
        }

    }
    else if(eleccion1 == "2"){
        for agent in agentes{
            if(agent.user == usuar){
                if(agent.password == passw){
                    t = 1
                }
                else{
                    print("Contraseña invalida, vuelva a intentarlo")
                }
            }
            else{
                print("Usuario invalido, vuelva a intentarlo")
            }
        }
    }
    else{
        print("Entrada invalida, vuelva a intentarlo")
    }
    
    print("Error en los datos vuelva a intentarlo")

}

