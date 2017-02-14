require_relative "model.rb"
require_relative "view.rb"

class MainController
  def initialize(input)
    @view = View.new
    @list = List.new
    menu(input)
  end

  def menu(input)
    task = input[1..input.length].join(" ")
    case input[0]
      when "index" then index
      when "add" then  add(task)
      when "delete" then  delete(task)
      when "complete" then complete(task)
    end

  end

  def index
    tasks = @list.index
    @view.index(tasks)
  end

  def add(task)
    @list.add(Task.new(task))
  end


  def delete(num_to_delete)
     new_list = @list.index
     @list.delete(new_list, num_to_delete)
     @view.index(@list.index)
  end

  def complete(num_to_complete)
    complete_task = @list.index
    @list.complete(complete_task, num_to_complete)
    @view.index(@list.index)
  end

end

input = ARGV

MainController.new(input)
