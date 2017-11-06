module TasksHelper
# tasks = Task.all
  def done_tasks
    @tasks.select { |task| task["done"] }
  end

end
