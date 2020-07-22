# These inflection rules are supported but not enabled by default:

ActiveSupport::Inflector.inflections(:pt) do |inflect|
  inflect.acronym 'RESTful'

  inflect.irregular "carro", "carros"
  inflect.irregular "interesse", "interesses"
  inflect.irregular "quero_carro", "quero_carros"
end
