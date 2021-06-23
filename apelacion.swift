import Foundation

class apelacion{
    // Atributos
    var idApelacion:Int
    var cliente:String
    var medidor:String
    var descripcion:String

    // Initializer
    init(idApelacion:Int, cliente:String, medidor:String, descripcion:String){
        self.cliente = cliente
        self.medidor = medidor
        self.descripcion = descripcion
        self.idApelacion = idApelacion
    }
}