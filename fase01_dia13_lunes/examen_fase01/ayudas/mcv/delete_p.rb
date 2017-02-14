 
 tasks = ["ir a comer",
"ir a dormir",
"ir a bailar"]


 def delete(tasks)
  new_array = []
      tasks.each_with_index do |task, num|
        
        if num == 1
          tasks.delete_at(num)
        end
        
        new_array << task 
      end
      new_array
end
p new_array
p delete(tasks)
