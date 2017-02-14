require "csv"

class Task
  attr_accessor :name, :status
  def initialize(name, status=false)
    @name = name
    @status = status 
  end

end


class List

  def index
    list = []
    CSV.foreach("tasks.csv").each do |task|
       list << Task.new(task[0], task[1])
    end
    list
  end

  def add(task)
    CSV.open("tasks.csv", "a+") do |csv|
      csv << [task.name, task.status]                
    end
  end

  def delete(tasks, num_to_delete)
      new_array = []
      tasks.each_with_index do |task, num|
          new_array << task if num + 1 != num_to_delete.to_i 
      end
      CSV.open("tasks.csv", "wb") do |csv|
        new_array.each do |task|
          csv << [task.name, task.status]  
        end              
      end
      
  end

  def complete(tasks, num_to_complete)
    tasks.each_with_index do |task, num|
     task.status = true if num_to_complete.to_i == num + 1
    end
    CSV.open("tasks.csv", "wb") do |csv|
      tasks.each do |task|
        csv << [task.name, task.status]  
      end              
    end
  end 
end
