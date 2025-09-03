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
    var property pesoTotal = 65
    var property puedeLlamar = true
}

object neo {
    var property pesoTotal = 0
    var property puedeLlamar = tieneCredito
    var property tieneCredito = false

    method puedeLlamar()
    {
        return tieneCredito
    }
}

object saraConnor {
    var property peso = 70
    var property pesoTotal = 0
    var property puedeLlamar = false
    var property vehiculo = moto

    method pesoTotal()
    {
        return peso + vehiculo.peso()
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
    var property peso = 100
}

object camion {
    var property peso = 500
    var property cantidadAcoplados = 0

    method peso()
    {
        return peso + cantidadAcoplados * 500
    }
}