def g_password(size=10)

    characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%&*"
    password = ""

    size.times do
        password << characters[rand(characters.length)]
    end

    password
end

print "Tamanho da senha: "
t = gets.to_i

puts "Senha gerada: #{g_password(t)}"