class CarrosController < ApplicationController
  before_action :set_carro, only: [:show, :edit, :update, :destroy]

  def index
    @carros = Carro.all
  end

  # GET /carros/1
  # GET /carros/1.json
  def show
  end

  # GET /carros/new
  def new
    @carro = Carro.new
  end

  # GET /carros/1/edit
  def edit
  end

  # POST /carros
  # POST /carros.json
  def create
    @carro = Carro.new(carro_params)

    respond_to do |format|
      if @carro.save
        format.html { redirect_to @carro, notice: 'Carro was successfully created.' }
        format.json { render :show, status: :created, location: @carro }
      else
        format.html { render :new }
        format.json { render json: @carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carros/1
  # PATCH/PUT /carros/1.json
  def update
    respond_to do |format|
      if @carro.update(carro_params)
        format.html { redirect_to @carro, notice: 'Carro was successfully updated.' }
        format.json { render :show, status: :ok, location: @carro }
      else
        format.html { render :edit }
        format.json { render json: @carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carros/1
  # DELETE /carros/1.json
  def destroy
    @carro.destaque.purge
    @carro.files.purge

    @carro.destroy
    respond_to do |format|
      format.html { redirect_to carros_url, notice: 'Carro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carro
      @carro = Carro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carro_params
      params.require(:carro).permit(
        :marca, :modelo, :km, :tipo, :portas, :matricula, :cor, :combustivel, :descricao,
        :preco, :lucro, :disponivel, :destaque, files: []
      )
    end
end
