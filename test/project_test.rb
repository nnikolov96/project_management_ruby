require "test_helper"
require 'project'
require 'task'
class ProjectTest < Minitest::Test
  def setup
    @project = Project.new('Random Project')
    @task = Task.new(size: 3)
    @big_task = Task.new(size: 7)
    @project.tasks = [@task, @big_task]
  end

  def test_project_with_no_tasks_to_be_done
    empty_project = Project.new('name')
    assert empty_project.done?
  end

  def test_project_with_incomplete_tasks_is_not_done
    refute @project.done?
  end

  def test_project_with_completed_tasks_is_done
    @task.mark_completed
    @big_task.mark_completed
    assert @project.done?
  end

  def test_should_calculate_its_size
    assert_equal @project.total_size, 10
  end
end
