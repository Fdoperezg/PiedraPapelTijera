arg = ARGV[0] #Este es la variable que defino como el valor a ingresar por el usuario

option = 0 if arg == 'tijera' #Aquí declaro que si el argumento es 'tijera', el argumento option será el integer 0 
option = 1 if arg == 'piedra' #Aquí declaro que si el argumento es 'piedra', el argumento option será el integer 1
option = 2 if arg == 'papel' #Aquí declaro que si el argumento es 'papel', el argumento option será el integer 2

if option != 0 && option != 1 && option != 2 #Aquí declaro, antes de cualquier fórmula, que si el argumento no es ninguna de las opciones definidas anteriormente, sale un mensaje de 'Argumento inválido'
    puts "Argumento inválido: Debe ser piedra, papel o tijera"
else #Recuerda que el 'else' es un 'si se diera una condición'
    rand_number = rand(0-3) #Aquí se utiliza el método rand para que la computadora elija un número al azar.
    computer_option = 'tijera' if rand_number == 0 #Aquí se enlaza lo que elija la computadora con una de las opciones. En este caso, si el número rándom es 0, la opción de la computadora será 'tijera'
    computer_option = 'piedra' if rand_number == 1 #Aquí se enlaza lo que elija la computadora con una de las opciones. En este caso, si el número rándom es 1, la opción de la computadora será 'piedra'
    computer_option = 'papel' if rand_number == 2 #Aquí se enlaza lo que elija la computadora con una de las opciones. En este caso, si el número rándom es 2, la opción de la computadora será 'papel'
    puts "Computador juega #{computer_option}" #Con esto mostramos la elección de la computadora.
    
    if option == rand_number #Aquí le estoy diciendo que si la opción es igual al número rándom que elije la computadora, empatamos.
      puts "Empataste" #Así imprime en pantalla el resultado
    elsif option == 0 && rand_number == 1 || option == 1 && rand_number == 2 || option == 2 && rand_number == 0 #Aquí defino todas las opciones de perder. Por ejemplo, si option es 0 (o sea tijera) y el rand_number 1 (o sea piedra), pierdo. La misma lógica para los otros.
      puts "Perdiste" #Así imprime en pantalla el resultado
    elsif option == 2 && rand_number == 1 || option == 1 && rand_number == 0 || option == 0 && rand_number == 2 #Aquí defino todas las opciones de ganar. Por ejemplo, si option es 2 (o sea papel) y el rand_number 1 (o sea piedra), gano. La misma lógica para los otros.
      puts "Ganaste" #Así imprime en pantalla el resultado
    end  #Recuerda siempre cerrar los argumentos
end #Recuerda siempre cerrar los argumentos