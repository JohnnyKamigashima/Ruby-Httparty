module PUTio
  include HTTParty

  #URi de contato
  base_uri CONFIG["url_padrao"] #usa o site configurado no ambiente support/data

  #opções da API
  format :json
  headers Authorization: "Bearer UQPIFS5X42ZZHB3L7PZN",
          'Content-Type': "application/json"
end
