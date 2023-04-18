describe "Fazer uma requisição usando token", :auth_tag do
  it "GET lista de files" do
    @lista = PUTio.get("/files/list")
    # puts @lista
    expect(@lista.code).to eq 200
  end
end
