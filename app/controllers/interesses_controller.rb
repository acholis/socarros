class InteressesController < ApplicationController
  before_action :set_interess, only: [:show, :edit, :update, :destroy]

  # GET /interesses
  # GET /interesses.json
  def index
    @interesses = Interesse.all
  end

  # GET /interesses/1
  # GET /interesses/1.json
  def show
  end

  # GET /interesses/new
  def new
    @interess = Interesse.new
  end

  # GET /interesses/1/edit
  def edit
  end

  # POST /interesses
  # POST /interesses.json
  def create
    @interess = Interesse.new(interess_params)

    respond_to do |format|
      if @interess.save
        format.html { redirect_to @interess, notice: 'Interesse was successfully created.' }
        format.json { render :show, status: :created, location: @interess }
      else
        format.html { render :new }
        format.json { render json: @interess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interesses/1
  # PATCH/PUT /interesses/1.json
  def update
    respond_to do |format|
      if @interess.update(interess_params)
        format.html { redirect_to @interess, notice: 'Interesse was successfully updated.' }
        format.json { render :show, status: :ok, location: @interess }
      else
        format.html { render :edit }
        format.json { render json: @interess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interesses/1
  # DELETE /interesses/1.json
  def destroy
    @interess.destroy
    respond_to do |format|
      format.html { redirect_to interesses_url, notice: 'Interesse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interess
      @interess = Interesse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def interess_params
      params.require(:interesse).permit(:nome, :telefone, :proposta, :visita, :carro_id)
    end
end
