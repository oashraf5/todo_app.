class ListController < ApplicationController
  def index
    @assignment_one_description = "Complete all missed assignments - Physics"
    @assignment_one_pomodoro_estimate = "4 pomodoros"
  end
  
  def new_todo
    @mytodos = ["laundry", "hw", "play", "ijsoijs", "kujugiug"]
    @num_todos = @mytodos.length
  end

  def show
  
  @id = params['id']
    if @id.to_i> 200
      @message = "not so fast"        
    end
  end

end