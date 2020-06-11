require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
    @task = tasks(:one)
  end

  test "should get index" do
    get :index, params: { project_id: @project }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { project_id: @project }
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, params: { project_id: @project, task: @task.attributes }
    end

    assert_redirected_to project_task_path(@project, Task.last)
  end

  test "should show task" do
    get :show, params: { project_id: @project, id: @task }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { project_id: @project, id: @task }
    assert_response :success
  end

  test "should update task" do
    put :update, params: { project_id: @project, id: @task, task: @task.attributes }
    assert_redirected_to project_task_path(@project, Task.last)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, params: { project_id: @project, id: @task }
    end

    assert_redirected_to project_tasks_path(@project)
  end
end
