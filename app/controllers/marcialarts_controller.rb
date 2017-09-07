class MarcialartsController < ApplicationController
  before_action :set_marcialart, only: [:show, :edit, :update, :destroy]
  
  def dojo
    
  end 
  


  # GET /marcialarts
  # GET /marcialarts.json
  def index
    @marcialarts = Marcialart.all
  end

  # GET /marcialarts/1
  # GET /marcialarts/1.json
  def show
  end

  # GET /marcialarts/new
  def new
    @marcialart = Marcialart.new
  end

  # GET /marcialarts/1/edit
  def edit
  end

  # POST /marcialarts
  # POST /marcialarts.json
  def create
    @marcialart = Marcialart.new(marcialart_params)

    respond_to do |format|
      if @marcialart.save
        format.html { redirect_to @marcialart, notice: 'Marcialart was successfully created.' }
        format.json { render :show, status: :created, location: @marcialart }
      else
        format.html { render :new }
        format.json { render json: @marcialart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marcialarts/1
  # PATCH/PUT /marcialarts/1.json
  def update
    respond_to do |format|
      if @marcialart.update(marcialart_params)
        format.html { redirect_to @marcialart, notice: 'Marcialart was successfully updated.' }
        format.json { render :show, status: :ok, location: @marcialart }
      else
        format.html { render :edit }
        format.json { render json: @marcialart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marcialarts/1
  # DELETE /marcialarts/1.json
  def destroy
    @marcialart.destroy
    respond_to do |format|
      format.html { redirect_to marcialarts_url, notice: 'Marcialart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marcialart
      @marcialart = Marcialart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marcialart_params
      params.require(:marcialart).permit(:nombre, :dominio, :origen, :aplica, :link, :image)
    end
end
