object paquete {
    var property destino = brooklyn
    var property estaPago = false

    method puedeLlevar(persona) {
        return destino.puedeLlegar(persona)
    }

    method puedeEntregar(persona)
    {
        return self.estaPago() && self.puedeLlevar(persona)
    }
}

//// Mensajeros ////
object jeanGray {
    const pesoTotal = 65
    const puedeLlamar = true

    method pesoTotal() {
        return pesoTotal
    }
 
    method puedeLlamar() {
        return puedeLlamar
    }
}

object neo {
    const peso = 0
    var property puedeLlamar = false

    method peso() {
        return peso
    }
}

object saraConnor {
    const peso = 70
    const puedeLlamar = false
    var property vehiculo = moto

    method peso() {
        return peso + vehiculo.peso()
    }
    
    method PuedeLlamar() {
        return puedeLlamar
    }

}

//// Destinos ////
object brooklyn {

    method puedeLlegar(persona) {
        return persona.pesoTotal() <= 1000
    }
}

object matrix {
    method puedeLlegar(persona) {
        return persona.puedeLlamar()
    }
}

//// Vehiculos ////

object moto {
    const peso = 100

    method peso() {
        return peso
    }
}

object camion {
    const peso = 500
    var property cantidadAcoplados = 0

    method peso() {
        return peso + self.pesoTotalDeAcoplados()
    }

    method pesoTotalDeAcoplados() {
        return cantidadAcoplados * 500
    }
}