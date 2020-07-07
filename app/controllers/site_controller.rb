class SiteController < ApplicationController
  layout 'site'

  before_action :set_carro, only: [:detailhes]

  
  def index
    @carros = Carro.all

  end

  def detailhes
    
  end

  private
    def set_carro
      @carro = Carro.find(params[:id])
    end


end
