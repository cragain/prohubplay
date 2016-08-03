class RagainsController < ApplicationController
  before_action :set_ragain, only: [:show, :edit, :update, :destroy]

  # GET /ragains
  # GET /ragains.json
  def index
    @ragains = Ragain.all
  end

  # GET /ragains/1
  # GET /ragains/1.json
  def show
  end

  # GET /ragains/new
  def new
    @ragain = Ragain.new
  end

  # GET /ragains/1/edit
  def edit
  end

  # POST /ragains
  # POST /ragains.json
  def create
    @ragain = Ragain.new(ragain_params)

    respond_to do |format|
      if @ragain.save
        format.html { redirect_to @ragain, notice: 'Ragain was successfully created.' }
        format.json { render :show, status: :created, location: @ragain }
      else
        format.html { render :new }
        format.json { render json: @ragain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ragains/1
  # PATCH/PUT /ragains/1.json
  def update
    respond_to do |format|
      if @ragain.update(ragain_params)
        format.html { redirect_to @ragain, notice: 'Ragain was successfully updated.' }
        format.json { render :show, status: :ok, location: @ragain }
      else
        format.html { render :edit }
        format.json { render json: @ragain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ragains/1
  # DELETE /ragains/1.json
  def destroy
    @ragain.destroy
    respond_to do |format|
      format.html { redirect_to ragains_url, notice: 'Ragain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ragain
      @ragain = Ragain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ragain_params
      params.require(:ragain).permit(:guy)
    end
end
