class Project
  attr_accessor :name, :tasks
  
  def initialize(name)
    @name = name
    @tasks = []
  end

  def done?
    incomplete_tasks.empty?
  end

  def incomplete_tasks
    tasks.reject(&:complete?)
  end

  def total_size
    tasks.sum(&:size)
  end

  def remaining_size
    incomplete_tasks.sum(&:size)
  end
end
