require "test_helper"
require 'task'

class TaskTest < Minitest::Test
  def setup
    @task = Task.new
  end

  def test_new_task_is_not_complete
    refute @task.complete?
  end


  def test_can_complete_tasks
    @task.mark_completed
    assert @task.complete?
  end
end
