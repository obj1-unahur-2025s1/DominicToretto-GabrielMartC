object ferrari {
    var motor = 87
  
    method estaEnCondiciones(){
        return motor >= 65
    }

    method reparar(){
        motor = 100
    }

    method hacerPruebaDeVelocidad(){
        motor = (motor - 30).max(0)
    }

    method velocidadMax(){
        return 110 + if(motor > 75) 15 else 0
    }
}

object flechaRubi{
    var combustibleLitros = 100
    var tipoConbustible = gasolina
    var color = azul

    method tipoConbustible(){ 
        return tipoConbustible
    }

    method tipoConbustible(otroTipoConbustible){
        tipoConbustible = otroTipoConbustible
    }

    // method cambiarColor(unColor){
    //     color = unColor
    // }

    method estaEnCondiciones(){
        return combustibleLitros > tipoConbustible.nivelMinimo() && color.esAptoParaCorrer()
    }

    method reparar(){
        combustibleLitros = combustibleLitros * 2
        color.cambiar()
    }

    method hacerPruebaDeVelocidad(){
        combustibleLitros = (combustibleLitros - 5).max(0)
    }

    method velocidadMax(){
        return combustibleLitros * 2 + tipoConbustible.influirEnVelocidadMaxima(combustibleLitros)

    }
}

object gasolina{
    method nivelMinimo(){
        return 85
    }

    // method influirEnVelocidadMaxima(velocidadMaxima){
    //     return velocidadMaxima + 10
    // }
    method influirEnVelocidadMaxima(litros){
        return 10
    }
}
object nafta{
    method nivelMinimo(){
        return 50
    }

    // method influirEnVelocidadMaxima(velocidadMaxima){
    //     return (velocidadMaxima * 0.10).max(0)
    // }
    method influirEnVelocidadMaxima(litros){
        return ((litros * 2) * 0.10) * -1
    }
}
object nitrogenoLiquido{
    method nivelMinimo(){
        return 0
    }

    method influirEnVelocidadMaxima(litros){
        return (litros * 2) * 10
    }
}

object azul {
    method cambiar(){
        return verde
    }

    method esAptoParaCorrer(){
        return false
    }
}
object rojo {
    method cambiar(){
        return azul
    }

    method esAptoParaCorrer(){
        return true
    }
}
object verde {
    method cambiar(){
        return rojo
    }

    method esAptoParaCorrer(){
        return false
    }
}



object intocable{
    var property estaEnCondiciones = true

    // method estaEnCondiciones(){

    // }

    method reparar(){
        estaEnCondiciones = true
    }

    method hacerPruebaDeVelocidad(){
        estaEnCondiciones = false
    }

    method velocidadMax(){
        return 45
    }
}

object batimovil{

}
