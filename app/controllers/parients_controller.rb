class ParientsController < ApplicationController
  before_action :set_parient, only: [:show, :edit, :update, :destroy]

  # GET /parients
  # GET /parients.json
  def index
    @parients = Parient.all
  end

  # GET /parients/1
  # GET /parients/1.json
  def show
  end

  # GET /parients/new
  def new
    @parient = Parient.new
  end

  # GET /parients/1/edit
  def edit
  end

  # POST /parients
  # POST /parients.json
  def create
    @parient = Parient.new(parient_params)

    respond_to do |format|
      if @parient.save
        format.html { redirect_to @parient, notice: 'Parient was successfully created.' }
        format.json { render :show, status: :created, location: @parient }
      else
        format.html { render :new }
        format.json { render json: @parient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parients/1
  # PATCH/PUT /parients/1.json
  def update
    respond_to do |format|
      if @parient.update(parient_params)
        format.html { redirect_to @parient, notice: 'Parient was successfully updated.' }
        format.json { render :show, status: :ok, location: @parient }
      else
        format.html { render :edit }
        format.json { render json: @parient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parients/1
  # DELETE /parients/1.json
  def destroy
    @parient.destroy
    respond_to do |format|
      format.html { redirect_to parients_url, notice: 'Parient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parient
      @parient = Parient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parient_params
      params.require(:parient).permit(:name)
    end
end
