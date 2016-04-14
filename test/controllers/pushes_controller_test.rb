require 'test_helper'

class PushesControllerTest < ActionController::TestCase
  setup do
    @push = pushes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pushes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create push" do
    assert_difference('Push.count') do
      post :create, push: { app_id: @push.app_id, appstore_dev_cert: @push.appstore_dev_cert, appstore_prod_cert: @push.appstore_prod_cert, delivery_time: @push.delivery_time, gcm_api_key: @push.gcm_api_key, gcm_sender_id: @push.gcm_sender_id, push_app_id: @push.push_app_id, push_client_key: @push.push_client_key, push_message: @push.push_message, push_restapi_key: @push.push_restapi_key, user_id: @push.user_id }
    end

    assert_redirected_to push_path(assigns(:push))
  end

  test "should show push" do
    get :show, id: @push
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @push
    assert_response :success
  end

  test "should update push" do
    patch :update, id: @push, push: { app_id: @push.app_id, appstore_dev_cert: @push.appstore_dev_cert, appstore_prod_cert: @push.appstore_prod_cert, delivery_time: @push.delivery_time, gcm_api_key: @push.gcm_api_key, gcm_sender_id: @push.gcm_sender_id, push_app_id: @push.push_app_id, push_client_key: @push.push_client_key, push_message: @push.push_message, push_restapi_key: @push.push_restapi_key, user_id: @push.user_id }
    assert_redirected_to push_path(assigns(:push))
  end

  test "should destroy push" do
    assert_difference('Push.count', -1) do
      delete :destroy, id: @push
    end

    assert_redirected_to pushes_path
  end
end
