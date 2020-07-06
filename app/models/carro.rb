class Carro < ApplicationRecord
    has_one_attached :destaque
    has_many_attached :files

    #enum combustivel: ['Gasolina', 'Gasoleo']
end


