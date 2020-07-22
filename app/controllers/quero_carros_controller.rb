class QueroCarrosController < ApplicationController
  before_action :set_quero_carro, only: [:show, :edit, :update, :destroy]

  # GET /quero_carros
  # GET /quero_carros.json
  def index
    @quero_carros = QueroCarro.all
  end

  # GET /quero_carros/1
  # GET /quero_carros/1.json
  def show
  end

  # GET /quero_carros/new
  def new
    @quero_carro = QueroCarro.new
  end

  # GET /quero_carros/1/edit
  def edit
  end

  # POST /quero_carros
  # POST /quero_carros.json
  def create
    @quero_carro = QueroCarro.new(quero_carro_params)

    respond_to do |format|
      if @quero_carro.save
        format.html { redirect_to root_path, notice: 'Quero carro was successfully created.' }
        format.json { render :show, status: :created, location: @quero_carro }
      else
        format.html { render :new }
        format.json { render json: @quero_carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quero_carros/1
  # PATCH/PUT /quero_carros/1.json
  def update
    respond_to do |format|
      if @quero_carro.update(quero_carro_params)
        format.html { redirect_to @quero_carro, notice: 'Quero carro was successfully updated.' }
        format.json { render :show, status: :ok, location: @quero_carro }
      else
        format.html { render :edit }
        format.json { render json: @quero_carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quero_carros/1
  # DELETE /quero_carros/1.json
  def destroy
    @quero_carro.destroy
    respond_to do |format|
      format.html { redirect_to quero_carros_url, notice: 'Quero carro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quero_carro
      @quero_carro = QueroCarro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quero_carro_params
      params.require(:quero_carro).permit(:marca, :modelo, :preco, :nome, :telefone, :descricao)
    end
end
