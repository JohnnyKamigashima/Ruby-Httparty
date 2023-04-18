module Criar
  include HTTParty

  #URi de contato
  base_uri CONFIG['url_padrao'] #usa o site configurado no ambiente support/data

  #opções da API
  format :json
  headers Accept: "application/vnd.taskmanager.v2",
          'Content-Type': "application/json"
end
