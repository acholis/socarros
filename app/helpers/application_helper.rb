include ActionView::Helpers::NumberHelper

module ApplicationHelper
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
