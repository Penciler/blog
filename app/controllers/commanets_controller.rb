class CommanetsController < ApplicationController
  before_action :set_commanet, only: [:show, :edit, :update, :destroy]

  # GET /commanets
  # GET /commanets.json
  def index
    @commanets = Commanet.all
  end

  # GET /commanets/1
  # GET /commanets/1.json
  def show
  end

  # GET /commanets/new
  def new
    @commanet = Commanet.new
  end

  # GET /commanets/1/edit
  def edit
  end

  # POST /commanets
  # POST /commanets.json
  def create
    @commanet = Commanet.new(commanet_params)

    respond_to do |format|
      if @commanet.save
        format.html { redirect_to @commanet, notice: 'Commanet was successfully created.' }
        format.json { render :show, status: :created, location: @commanet }
      else
        format.html { render :new }
        format.json { render json: @commanet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commanets/1
  # PATCH/PUT /commanets/1.json
  def update
    respond_to do |format|
      if @commanet.update(commanet_params)
        format.html { redirect_to @commanet, notice: 'Commanet was successfully updated.' }
        format.json { render :show, status: :ok, location: @commanet }
      else
        format.html { render :edit }
        format.json { render json: @commanet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commanets/1
  # DELETE /commanets/1.json
  def destroy
    @commanet.destroy
    respond_to do |format|
      format.html { redirect_to commanets_url, notice: 'Commanet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commanet
      @commanet = Commanet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commanet_params
      params.require(:commanet).permit(:post_id, :body)
    end
end
