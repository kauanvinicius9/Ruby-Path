tarefas = []

loop do
    puts "\n==== TO DO LIST ===="
    puts "1. Adicionar uma tarefa"
    puts "2. Listar uma tarefa"
    puts "3. Remover uma tarefa"
    puts "4. Sair"
    print "Escolha uma das 4 opções: "

    opcao = gets.to_i

    case opcao
    when 1
        print "Digite a tarefa desejada: "
        tarefa = gets.chomp
        tarefas << tarefa
        puts "Tarefa adicionada!"

    when 2
        puts "\n Tarefas:"

        if tarefas.empty?
            puts "Nenhuma tarefa foi adicionada"

        else
            tarefas.each_with_index do |t, i|
                puts "#{i + 1}. #{t}"

            end
        end

    when 3
        print "Número da tarefa para ser removida: "
        index = gets.to_i - 1

        if tarefas[index]
            removida = tarefas.delete_at(index)
            puts "Tarefa removida: #{removida}"

        else
            puts "Número não identificado"
        end

    when 4
        puts "Saindo da sessão..."
        break
    
    else
        puts "Opção não identificada"
    end
end