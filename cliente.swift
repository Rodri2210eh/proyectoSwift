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
