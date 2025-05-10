object dominic{
    const autos = []

    method comprar(unAuto){
        autos.add(unAuto)
    }

    method noEstanEnCondiciones(){//return sublista
        return autos.filter({auto => !auto.estaEnCondiciones()})
    }

    method estanEnCondiciones(){
        return autos.filter({auto => auto.estaEnCondiciones()})
    }

    method mandarAutosAlTaller(){
        taller.recibirAutos(self.noEstanEnCondiciones())
    }

    method hacerPruebaDeVelocidades(){
        autos.forEach({auto => auto.hacerPruebaDeVelocidad()})
    }

    method venderTodosLosAutos(){
        autos.clear()
    }

    method promedioVelMaxima(){ //return float
        return autos.sum({auto => auto.velocidadMax()}) / autos.size()
    }

    method autoEnCondMasRapido(){ //return auto
        return self.estanEnCondiciones().max({auto => auto.velocidadMax()})
    }

    method hayUnAutoMuyRapido(){ //return bool
        return self.autoEnCondMasRapido().velocidadMaxima() > self.promedioVelMaxima() * 2
    }

    


}

object taller{
    const autosAReparar = []

    method recibirAutos(listaAutos){
        autosAReparar.addAll(listaAutos)
    }

    method repararAutos(){
        autosAReparar.forEach({auto => auto.reparar()})
        autosAReparar.clear()
    }


}