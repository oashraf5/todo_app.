class ListController < ApplicationController
  def index
    @assignment_one_description = "Complete all missed assignments - Physics"
    @assignment_one_pomodoro_estimate = "4 pomodoros"
  end
  
  def new_todo
    @mytodos = ["laundry", "hw", "play", "ijsoijs", "kujugiug"]
    @num_todos = @mytodos.length
  end

  def first 
  end

  def second 
  end 
end

