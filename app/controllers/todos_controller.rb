class TodosController < ApplicationController
  def index
  end

	def all
		completed = Todo.where(completed: true)
		incomplete = Todo.where(completed: false)
		render json: {completed: completed, incomplete: incomplete}
	end

	def update
		to_update = Todo.find(params[:id])
    if to_update.update!(todo_params)
      render json: {message: "Item updated successfully"}
    else
      render json: {message: "Operation failed successfully"}
    end
  end

  def create
    new_todo = Todo.create!(todo_params)
    if new_todo
      render json: { message: "Todo Item created successfully" }
    else
      render json: { message: "An error occured" }
    end
  end
  
  private

  def todo_params
    params.require(:todo).permit(:id, :title, :completed)
  end
end
