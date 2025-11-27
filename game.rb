number = rand(1..20)
attemps = 0

puts "Boas-vindas ao jogo de adivinhação!"
puts "Tente adivinhar o número entre 1 e 20."

loop do
    print "Sua opinião: "
    opiniao = gets.to_i
    attemps += 1

    if opiniao == number 
        puts "Correto, Você acertou em #{attemps} tentativas!"
        break

    elsif opiniao < number
        puts "Baixo"

    else
        puts "Alto"
    end
end