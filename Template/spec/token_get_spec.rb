describe "Fazer uma requisição usando token", :auth_tag do
  it "GET com token" do
    #gera email aleatorio
    @email = Faker::Internet.email
    @pass = "123456"

    @body = {
      user: {
        email: @email,
        password: @pass,
        password_confirmation: @pass,
      },
    }.to_json

    @criar = Criar.post("/users", body: @body) #Cria usuario fake
    expect(@criar.code).to eq 201 #valida que o usuario foi criado com sucesso
    @auth_token = @criar.parsed_response["data"]["attributes"]["auth-token"] #guarda o token deste usuario

    @body_one = { #gera dados de login deste usuario para a sessão
      session: {
        email: @email,
        password: @pass,
      },
    }.to_json

    @header_one = { #adiciona token ao header para este usuario com token
      Authorization: @auth_token,
    }

    @login = Criar.post("/sessions", body: @body_one, headers: @header_one)
    expect(@login.code).to eq 200 #valida que foi feito login com sucesso
  end
end
