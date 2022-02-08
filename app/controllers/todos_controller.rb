class TodosController < ApplicationController
  def index
  end

	def all
		completed = Todo.where(completed: true)
		incomplete = Todo.where(completed: false)
		render json: {completed: completed, incomplete: incomplete}
end
