require 'test_helper'

class WorkRequestsControllerTest < ActionController::TestCase
  setup do
    @work_request = work_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_request" do
    assert_difference('WorkRequest.count') do
      post :create, work_request: { area_id: @work_request.area_id, businessunit_id: @work_request.businessunit_id, category_id: @work_request.category_id, plant_id: @work_request.plant_id, queue: @work_request.queue, requestors: @work_request.requestors, status_id: @work_request.status_id, title: @work_request.title }
    end

    assert_redirected_to work_request_path(assigns(:work_request))
  end

  test "should show work_request" do
    get :show, id: @work_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_request
    assert_response :success
  end

  test "should update work_request" do
    put :update, id: @work_request, work_request: { area_id: @work_request.area_id, businessunit_id: @work_request.businessunit_id, category_id: @work_request.category_id, plant_id: @work_request.plant_id, queue: @work_request.queue, requestors: @work_request.requestors, status_id: @work_request.status_id, title: @work_request.title }
    assert_redirected_to work_request_path(assigns(:work_request))
  end

  test "should destroy work_request" do
    assert_difference('WorkRequest.count', -1) do
      delete :destroy, id: @work_request
    end

    assert_redirected_to work_requests_path
  end
end
