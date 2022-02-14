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
    if to_update.update_attributes!(todo_params)
      render json: {message: "Item updated successfully"}
    else
      render json: {message: "Operation failed successfully"}
    end
  end

  private todo_params
    params.require(:todo).permit(:id, :title, :completed)
end
