import Foundation 


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
