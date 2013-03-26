require 'test_helper'

class AveragewaitsControllerTest < ActionController::TestCase
  setup do
    @averagewait = averagewaits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:averagewaits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create averagewait" do
    assert_difference('Averagewait.count') do
      post :create, averagewait: { average_time: @averagewait.average_time, day: @averagewait.day, dow: @averagewait.dow, hour: @averagewait.hour, minute: @averagewait.minute, month: @averagewait.month, year: @averagewait.year }
    end

    assert_redirected_to averagewait_path(assigns(:averagewait))
  end

  test "should show averagewait" do
    get :show, id: @averagewait
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @averagewait
    assert_response :success
  end

  test "should update averagewait" do
    put :update, id: @averagewait, averagewait: { average_time: @averagewait.average_time, day: @averagewait.day, dow: @averagewait.dow, hour: @averagewait.hour, minute: @averagewait.minute, month: @averagewait.month, year: @averagewait.year }
    assert_redirected_to averagewait_path(assigns(:averagewait))
  end

  test "should destroy averagewait" do
    assert_difference('Averagewait.count', -1) do
      delete :destroy, id: @averagewait
    end

    assert_redirected_to averagewaits_path
  end
end
