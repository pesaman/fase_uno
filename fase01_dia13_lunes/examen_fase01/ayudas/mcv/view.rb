class View

  def index(tasks)
    i = 1
    tasks.each do |task|
      if task.status == "true"
      puts "#{i}. [x] #{task.name}"
      i +=1 
      else 
      puts "#{i}. [ ] #{task.name}"
      i +=1 
      end   
    end
  end  



end




