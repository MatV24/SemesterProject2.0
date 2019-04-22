class CoursecriterionsController < ApplicationController
  before_action :set_coursecriterion, only: [:show, :edit, :update, :destroy]

  # GET /coursecriterions
  # GET /coursecriterions.json
  def index
    @coursecriterions = Coursecriterion.all
  end

  # GET /coursecriterions/1
  # GET /coursecriterions/1.json
  def show
  end

  # GET /coursecriterions/new
  def new
    @coursecriterion = Coursecriterion.new
  end

  # GET /coursecriterions/1/edit
  def edit
  end

  # POST /coursecriterions
  # POST /coursecriterions.json
  def create
    @coursecriterion = Coursecriterion.new(coursecriterion_params)

    respond_to do |format|
      if @coursecriterion.save
        format.html { redirect_to @coursecriterion, notice: 'Coursecriterion was successfully created.' }
        format.json { render :show, status: :created, location: @coursecriterion }
      else
        format.html { render :new }
        format.json { render json: @coursecriterion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coursecriterions/1
  # PATCH/PUT /coursecriterions/1.json
  def update
    respond_to do |format|
      if @coursecriterion.update(coursecriterion_params)
        format.html { redirect_to @coursecriterion, notice: 'Coursecriterion was successfully updated.' }
        format.json { render :show, status: :ok, location: @coursecriterion }
      else
        format.html { render :edit }
        format.json { render json: @coursecriterion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coursecriterions/1
  # DELETE /coursecriterions/1.json
  def destroy
    @coursecriterion.destroy
    respond_to do |format|
      format.html { redirect_to coursecriterions_url, notice: 'Coursecriterion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coursecriterion
      @coursecriterion = Coursecriterion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coursecriterion_params
      params.require(:coursecriterion).permit(:Exceed, :Accept, :Poor, :course_id, :criterion_id)
    end
end
