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
  
  @list = List.find_by_id(params['id'])
    if @id.to_i> 200
      @message = "not so fast"        
    end
  end

  def new
  end

  def create
    l = List.new
    l.name = params['name']
    l.save
    redirect_to "/list/#{ l.id }"
  end
  
  def edit
    @list = List.find_by_id(params['id'])
  end
  
  def update
    l=List.find_by_id(params['id'])
    l.name=params['name']
    l.save
    redirect_to "/list/#{l.id}"
  end
end