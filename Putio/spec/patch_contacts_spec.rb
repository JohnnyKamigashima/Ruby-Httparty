# describe "Fazer uma requisição", :patch_tag do
#   it "PATCH contatos" do

#     #envia somente o body para alterar pelo metodo PATCH conforme documentação da API
#     @body = {
#       "id": 9, #neste método é necessário localizar o index
#       "name": "bruno batista 25",
#       "last_name": "batista 25",
#       "email": "brunotop25@gmail.com",
#     }.to_json

#     @resultado = Site.patch("/contacts", body: @body) #faz a requisição adicionando body
#   end
# end
