class DaysOfTheWeeksController < ApplicationController
  before_action :set_days_of_the_week, only: [:show, :edit, :update, :destroy]

  # GET /days_of_the_weeks
  # GET /days_of_the_weeks.json
  def index
    @days_of_the_weeks = DaysOfTheWeek.all
  end

  # GET /days_of_the_weeks/1
  # GET /days_of_the_weeks/1.json
  def show
  end

  # GET /days_of_the_weeks/new
  def new
    @days_of_the_week = DaysOfTheWeek.new
  end

  # GET /days_of_the_weeks/1/edit
  def edit
  end

  # POST /days_of_the_weeks
  # POST /days_of_the_weeks.json
  def create
    @days_of_the_week = DaysOfTheWeek.new(days_of_the_week_params)

    respond_to do |format|
      if @days_of_the_week.save
        format.html { redirect_to @days_of_the_week, notice: 'Days of the week was successfully created.' }
        format.json { render :show, status: :created, location: @days_of_the_week }
      else
        format.html { render :new }
        format.json { render json: @days_of_the_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /days_of_the_weeks/1
  # PATCH/PUT /days_of_the_weeks/1.json
  def update
    respond_to do |format|
      if @days_of_the_week.update(days_of_the_week_params)
        format.html { redirect_to @days_of_the_week, notice: 'Days of the week was successfully updated.' }
        format.json { render :show, status: :ok, location: @days_of_the_week }
      else
        format.html { render :edit }
        format.json { render json: @days_of_the_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days_of_the_weeks/1
  # DELETE /days_of_the_weeks/1.json
  def destroy
    @days_of_the_week.destroy
    respond_to do |format|
      format.html { redirect_to days_of_the_weeks_url, notice: 'Days of the week was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_days_of_the_week
      @days_of_the_week = DaysOfTheWeek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def days_of_the_week_params
      params.require(:days_of_the_week).permit(:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
    end
end
