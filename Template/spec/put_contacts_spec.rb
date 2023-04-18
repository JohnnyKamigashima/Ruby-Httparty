describe "Fazer uma requisição", :put_tag do
  it "PUT contatos" do
    @email = Faker::Internet.email
    #envia o body necessário no metodo PUT conforme documentação da API
    puts @email
    @body = {
      "user": {
        "id": "2",
        "email": @email,
        "password": "123456",
        "password_confirmation": "123456",
      },
    }.to_json

    @resultado = Site.put("/contacts", body: @body) #faz a requisição adicionando body
    expect(@resultado.code).to eq 200 #Valida se a resposta foi 200
  end
end
