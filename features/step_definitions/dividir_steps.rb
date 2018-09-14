Dado("que esteja na tela incial da calculadora") do
    id('main_calculator').displayed?
end

Quando("dividir {int} por {int}") do |a, b|
    id("digit_#{a}").click
    id('op_div').click
    id("digit_#{b}").click
    id('eq').click
end

Então("devo visualizar {int} como resultado") do |result|
    fail 'O valor não foi apresentado corretamente' unless id('result').text.eql? result.to_s
end

Então("devo visualizar a mensagem {string}") do |mensagem|
    expect(id('result').text).to eq(mensagem)
end