# describe "Fazer uma requisição", :put_tag do
#   it "PUT contatos" do

#     #envia o body necessário no metodo PUT conforme documentação da API
#     @body = {
#       "id": 9, #neste método é necessário localizar o index
#       "name": "bruno batista 66",
#       "last_name": "batista 666",
#       "email": "brunotop666@gmail.com",
#       "age": "28",
#       "phone": "21984759575",
#       "address": "Rua dois",
#       "state": "Minas Gerais",
#       "city": "Belo Horizonte",
#     }.to_json

#     @resultado = Site.put("/contacts", body: @body) #faz a requisição adicionando body
#     expect(@resultado.code).to eq 200 #Valida se a resposta foi 200
#   end
# end
