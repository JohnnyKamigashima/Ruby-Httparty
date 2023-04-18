describe "Verificar lista de contatos", :get_tag do
  it "GET contatos" do
    @resultado = Site.get("/contacts/3300")
    expect(@resultado.code).to eq 200 #valida se a resposta do servidor é 200
    puts @resultado.parsed_response #retorna em formato JSON
    puts @resultado.parsed_response["data"]["attributes"]["last-name"]
    #para localizar o dado dentro do json é necessário começar a árvore a aprtir do elemento pai "data"=>"attributes"=>last-name
    expect(@resultado.parsed_response["data"]["attributes"]["last-name"]).to match(/hunter/i) #Valida que o usuario de id 3300 tem sobre nome hunter ignorando case
  end
end
