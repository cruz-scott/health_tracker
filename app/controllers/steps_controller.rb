class StepsController < ApplicationController
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
  end

  def update
  end

  def destroy
  end
end
