module TasksHelper
# tasks = Task.all
#
  def ongoing_tasks
    @tasks.reject { |task| task["done"] }
  end

  def done_tasks
    @tasks.select { |task| task["done"] }
  end

  def react_to_workload
    count = @tasks.count
    cool =  "Tout est OKLM !"
    chill = "Le repos c'est la santé !"
    naptime = "Et si on faisait une sieste !"
    overload = "Surcharge de travail, tu devrais prendre du repos"

    case count
      when 0..5
        return  cool
      when 6..10
        return chill
      when 11..15
        return naptime
      when 16..20
        return overload
    end
  end


  def completed_tasks_percentage
    tasks = @tasks.count.to_f
    complete = done_tasks.count.to_f
    percentage = (complete / tasks) * 100
    return percentage.to_i
  end


end
