import Foundation

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


}