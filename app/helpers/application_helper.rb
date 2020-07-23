include ActionView::Helpers::NumberHelper
module ApplicationHelper
    def meta_description
        "Só carros é a sua plataforma digital que conecta os vendedores e compradores de carros novos e de ocasião 
         de forma simples, rápida e segura. Garantimos para si comprador " 
    end

    def meta_title_fb
        "Só carros é a sua plataforma digital que conecta os vendedores e compradores de carros novos e de ocasião 
        de forma simples, rápida e segura"
    end

    def meta_keywords
        "Acholis, Só carros, TeamBuild, Cabanga, Angola,
        Barato, Caro, Simples, Facil, Seguro, Compra, compra seguro,
        Carro, Carros usados, Carros, Carros baratos, Carros usados baratos, Carrossel antigo, Carros baratos usados
        "
    end

    Float.class_eval do
        # Converte floats para kwanza
        # deve ser chamado como método de instância
        def to_kwanza
            valor = self
            valor = 0 if valor.blank?
            number_to_currency(valor, unit: "AKz", separator: ",", delimiter:".", format: "%n %u")
        end
  
        def to_month
            self.to_i.to_month
        end
  
        def to_month_abbr
            self.to_i.to_month_abbr
        end
    end

    BigDecimal.class_eval do
        # Converte decimals para kwanza
        # deve ser chamado da como método de instância
        def to_kwanza
          self.to_f.to_kwanza
        end
  
        def to_month
          self.to_i.to_month
        end
  
        def to_month_abbr
          self.to_i.to_month_abbr
        end
    end

    Integer.class_eval do
        # Converte decimals para kwanza
        # deve ser chamado da como método de instância
        def to_kwanza
          self.to_f.to_kwanza
        end
  
        def to_month
          self.to_i.to_month
        end
  
        def to_month_abbr
          self.to_i.to_month_abbr
        end
    end

    Integer.class_eval do
        # Converte decimals para kwanza
        # deve ser chamado da como método de instância
        def to_kwanza
          self.to_f.to_kwanza
        end
    end




end
