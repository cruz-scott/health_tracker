class StepsController < ApplicationController
  before_action :set_steps, only: [:show, :edit, :update, :destroy]


  def index
    @steps = Step.all
  end

  def show
  end

  def new
    @step = Step.new
  end

  def edit
  end

  def create
    @step = Step.new(step_params)

    respond_to do |format|
      if @step.save
        format.html { redirect_to @step, notice: 'Weight was successfully created.' }
        format.json { render :show, status: :created, location: @step }
      else
        format.html { render :new }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @step.update(step_params)
        format.html { redirect_to @step, notice: 'Weight was successfully updated.' }
        format.json { render :show, status: :ok, location: @step }
      else
        format.html { render :edit }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @step.destroy
    respond_to do |format|
      format.html { redirect_to steps_url, notice: 'Weight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_steps
      @step = Step.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:step).permit(:value)
    end

end
