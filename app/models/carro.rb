class Carro < ApplicationRecord
    has_one_attached :destaque
    has_many_attached :files
    has_rich_text :content

    has_many :interesses

    def preco_total
        self.preco + self.lucro
    end
    #enum combustivel: ['Gasolina', 'Gasoleo']
end


