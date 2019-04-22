class CourseevaluationsController < ApplicationController
  before_action :set_courseevaluation, only: [:show, :edit, :update, :destroy]

  # GET /courseevaluations
  # GET /courseevaluations.json
  def index
    @courseevaluations = Courseevaluation.all
  end

  # GET /courseevaluations/1
  # GET /courseevaluations/1.json
  def show
  end

  # GET /courseevaluations/new
  def new
    @courseevaluation = Courseevaluation.new
  end

  # GET /courseevaluations/1/edit
  def edit
  end

  # POST /courseevaluations
  # POST /courseevaluations.json
  def create
    @courseevaluation = Courseevaluation.new(courseevaluation_params)

    respond_to do |format|
      if @courseevaluation.save
        format.html { redirect_to @courseevaluation, notice: 'Courseevaluation was successfully created.' }
        format.json { render :show, status: :created, location: @courseevaluation }
      else
        format.html { render :new }
        format.json { render json: @courseevaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courseevaluations/1
  # PATCH/PUT /courseevaluations/1.json
  def update
    respond_to do |format|
      if @courseevaluation.update(courseevaluation_params)
        format.html { redirect_to @courseevaluation, notice: 'Courseevaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @courseevaluation }
      else
        format.html { render :edit }
        format.json { render json: @courseevaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courseevaluations/1
  # DELETE /courseevaluations/1.json
  def destroy
    @courseevaluation.destroy
    respond_to do |format|
      format.html { redirect_to courseevaluations_url, notice: 'Courseevaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_courseevaluation
      @courseevaluation = Courseevaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def courseevaluation_params
      params.require(:courseevaluation).permit(:criteriathreshold, :course_id, :faculty_id, :criterion_id)
    end
end
