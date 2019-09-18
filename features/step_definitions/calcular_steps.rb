Dado("que estou na calculadora") do
  find_element(id: 'main_calculator').displayed?
end

Quando("efetuo a soma do número {string} com o {string}") do |num_1, num_2|
  find(num_1).click
  find_element(id: 'op_add').click
  find(num_2).click
  find_element(id: 'eq')
end

Entao("visualizo {string} como o resultado da soma") do |resultado_esperado|
  resultado_atual = find_element(id: 'result_preview').text
  expect(resultado_atual).to eq(resultado_esperado)
end