require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  setup do
    @content = contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content" do
    assert_difference('Content.count') do
      post :create, content: { app_id: @content.app_id, content_id: @content.content_id, content_price: @content.content_price, content_url: @content.content_url, cover: @content.cover, hpub_url: @content.hpub_url, info: @content.info, product_id: @content.product_id, publish_date: @content.publish_date, publish_platform: @content.publish_platform, status: @content.status, title: @content.title, user_id: @content.user_id }
    end

    assert_redirected_to content_path(assigns(:content))
  end

  test "should show content" do
    get :show, id: @content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content
    assert_response :success
  end

  test "should update content" do
    patch :update, id: @content, content: { app_id: @content.app_id, content_id: @content.content_id, content_price: @content.content_price, content_url: @content.content_url, cover: @content.cover, hpub_url: @content.hpub_url, info: @content.info, product_id: @content.product_id, publish_date: @content.publish_date, publish_platform: @content.publish_platform, status: @content.status, title: @content.title, user_id: @content.user_id }
    assert_redirected_to content_path(assigns(:content))
  end

  test "should destroy content" do
    assert_difference('Content.count', -1) do
      delete :destroy, id: @content
    end

    assert_redirected_to contents_path
  end
end
