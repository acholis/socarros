class SiteController < ActionController::Base
  layout 'site'
  before_action :set_carro, only: [:detailhes]

  
  def index
    redirect_to dashboard_path if user_signed_in?
    @carros = Carro.all
    @quero_carro = QueroCarro.new
  end

  def detailhes
    @interess = Interesse.new(carro_id: @carro.id)
  end

  def about_us
    
  end

  private
    def set_carro
      @carro = Carro.find(params[:id])
    end


end
