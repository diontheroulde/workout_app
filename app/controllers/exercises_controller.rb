class ExercisesController < ApplicationController
  def index
  end

  def N=new
    @exercise = current_user.exercises.new
  end
end