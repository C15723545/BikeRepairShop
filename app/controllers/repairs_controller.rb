class RepairsController < ApplicationController
  before_action :set_repair, only: [:show, :edit, :update, :destroy]
  before_action :authorise, :only => [:new, :create]
  #before_action :staffauthorise, :only => [:new, :create, :edit, :update, :destroy]

  # GET /repairs
  # GET /repairs.json
  def index
    #@repairs = Repair.all
	@repairs = Repair.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /repairs/1
  # GET /repairs/1.json
  def show
  end

  def search
	@repairs = Repair.search params[:query], params[:page]
	unless @repairs.empty?
		render 'index'
	else
		flash[:notice] = 'No bicycle description matches that search'
		redirect_to repairs_path
	end
  end
  
  # GET /repairs/new
  def new
    @repair = Repair.new
  end

  # GET /repairs/1/edit
  def edit
  end

  # POST /repairs
  # POST /repairs.json
  def create
    @repair = Repair.new(repair_params)

    respond_to do |format|
      if @repair.save
        format.html { redirect_to @repair, notice: 'Repair was successfully created.' }
        format.json { render :show, status: :created, location: @repair }
      else
        format.html { render :new }
        format.json { render json: @repair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repairs/1
  # PATCH/PUT /repairs/1.json
  def update
    respond_to do |format|
      if @repair.update(repair_params)
        format.html { redirect_to @repair, notice: 'Repair was successfully updated.' }
        format.json { render :show, status: :ok, location: @repair }
      else
        format.html { render :edit }
        format.json { render json: @repair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repairs/1
  # DELETE /repairs/1.json
  def destroy
    @repair.destroy
    respond_to do |format|
      format.html { redirect_to repairs_url, notice: 'Repair was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair
      @repair = Repair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repair_params
      params.require(:repair).permit(:date_out, :cost_quote, :labour_cost, :total_cost, :customer_id, :job_id, :required_date, :description, :repair_type, :repair_detail, :repair_photo)
    end
end
