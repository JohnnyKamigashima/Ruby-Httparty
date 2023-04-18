# describe "Fazer uma requisição", :post_tag do
#   it "POST contatos" do

#     #envia o body necessário no metodo POST conforme documentação da API
#     @body = {
#       "id": 9,
#       "name": "bruno batista 25",
#       "last_name": "batista 25",
#       "email": "brunotop66668@gmail.com",
#       "age": "28",
#       "phone": "21984759575",
#       "address": "Rua dois",
#       "state": "Minas Gerais",
#       "city": "Belo Horizonte",
#     }.to_json

#     @resultado = Site.post("/contacts", body: @body) #faz a requisição adicionando body
#   end
# end
