class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def end
    @todo = Todo.new
  end
end
