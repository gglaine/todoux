module TasksHelper
# tasks = Task.all
  def done_tasks
    @tasks.select { |task| task["done"] }
  end

  def react_to_workload
    count = @tasks.count

    cool =  "Cool raoul !"
    chill = "I think you should Chill Bill !"
    naptime = "Et si on faisait une sieste"

    case count
      when 0..5
        return  cool
      when 6..10
        return chill
      when 11..15
        return nap
    end
  end

  def completed_tasks_percentage
    tasks = @tasks.count.to_f
    complete = done_tasks.count.to_f
    percentage = (complete / tasks) * 100
    # percentage = percentage / 100
    return percentage.to_i
  end

end
