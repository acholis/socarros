class SiteController < ApplicationController
  layout 'site'
  
  def index
    @carros = Carro.all

  end
end
