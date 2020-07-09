class SiteController < ActionController::Base
  layout 'site'

  before_action :set_carro, only: [:detailhes]

  
  def index
    @carros = Carro.all

  end

  def detailhes
    @interess = Interesse.new(carro_id: @carro.id)

  end

  private
    def set_carro
      @carro = Carro.find(params[:id])
    end


end
