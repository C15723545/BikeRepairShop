class PartsrequiredsController < ApplicationController
  before_action :set_partsrequired, only: [:show, :edit, :update, :destroy]

  # GET /partsrequireds
  # GET /partsrequireds.json
  def index
    @partsrequireds = Partsrequired.all
  end

  # GET /partsrequireds/1
  # GET /partsrequireds/1.json
  def show
  end

  # GET /partsrequireds/new
  def new
    @partsrequired = Partsrequired.new
  end

  # GET /partsrequireds/1/edit
  def edit
  end

  # POST /partsrequireds
  # POST /partsrequireds.json
  def create
    @partsrequired = Partsrequired.new(partsrequired_params)

    respond_to do |format|
      if @partsrequired.save
        format.html { redirect_to @partsrequired, notice: 'Partsrequired was successfully created.' }
        format.json { render :show, status: :created, location: @partsrequired }
      else
        format.html { render :new }
        format.json { render json: @partsrequired.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partsrequireds/1
  # PATCH/PUT /partsrequireds/1.json
  def update
    respond_to do |format|
      if @partsrequired.update(partsrequired_params)
        format.html { redirect_to @partsrequired, notice: 'Partsrequired was successfully updated.' }
        format.json { render :show, status: :ok, location: @partsrequired }
      else
        format.html { render :edit }
        format.json { render json: @partsrequired.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partsrequireds/1
  # DELETE /partsrequireds/1.json
  def destroy
    @partsrequired.destroy
    respond_to do |format|
      format.html { redirect_to partsrequireds_url, notice: 'Partsrequired was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partsrequired
      @partsrequired = Partsrequired.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partsrequired_params
      params.require(:partsrequired).permit(:quantity, :part_id, :repair_id)
    end
end
