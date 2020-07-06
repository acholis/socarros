json.extract! carro, :id, :marca, :modelo, :km, :tipo, :portas, :matricula, :cor, :combustivel, :descricao, :created_at, :updated_at
json.url carro_url(carro, format: :json)
