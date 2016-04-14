require 'test_helper'

class AppsControllerTest < ActionController::TestCase
  setup do
    @app = apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app" do
    assert_difference('App.count') do
      post :create, app: { amazon_category: @app.amazon_category, amazon_url: @app.amazon_url, app_availability: @app.app_availability, app_plan: @app.app_plan, app_price: @app.app_price, app_rating: @app.app_rating, app_version: @app.app_version, appicon_url: @app.appicon_url, appstore_category2: @app.appstore_category2, appstore_category: @app.appstore_category, appstore_url: @app.appstore_url, blog_url: @app.blog_url, contact_email: @app.contact_email, content_frequency: @app.content_frequency, copyright: @app.copyright, description: @app.description, facebook_url: @app.facebook_url, ga_app_id: @app.ga_app_id, ga_hub_id: @app.ga_hub_id, googleplay_category: @app.googleplay_category, googleplay_url: @app.googleplay_url, googleplus_url: @app.googleplus_url, hub_url: @app.hub_url, instagram_url: @app.instagram_url, keywords: @app.keywords, linkedin_url: @app.linkedin_url, logo_url: @app.logo_url, pinterest_url: @app.pinterest_url, rss_feed_url: @app.rss_feed_url, site_url: @app.site_url, status: @app.status, store_url: @app.store_url, theme_color: @app.theme_color, title: @app.title, twitter_url: @app.twitter_url, user_id: @app.user_id, user_subscription: @app.user_subscription, vimeo_url: @app.vimeo_url, youtube_url: @app.youtube_url }
    end

    assert_redirected_to app_path(assigns(:app))
  end

  test "should show app" do
    get :show, id: @app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app
    assert_response :success
  end

  test "should update app" do
    patch :update, id: @app, app: { amazon_category: @app.amazon_category, amazon_url: @app.amazon_url, app_availability: @app.app_availability, app_plan: @app.app_plan, app_price: @app.app_price, app_rating: @app.app_rating, app_version: @app.app_version, appicon_url: @app.appicon_url, appstore_category2: @app.appstore_category2, appstore_category: @app.appstore_category, appstore_url: @app.appstore_url, blog_url: @app.blog_url, contact_email: @app.contact_email, content_frequency: @app.content_frequency, copyright: @app.copyright, description: @app.description, facebook_url: @app.facebook_url, ga_app_id: @app.ga_app_id, ga_hub_id: @app.ga_hub_id, googleplay_category: @app.googleplay_category, googleplay_url: @app.googleplay_url, googleplus_url: @app.googleplus_url, hub_url: @app.hub_url, instagram_url: @app.instagram_url, keywords: @app.keywords, linkedin_url: @app.linkedin_url, logo_url: @app.logo_url, pinterest_url: @app.pinterest_url, rss_feed_url: @app.rss_feed_url, site_url: @app.site_url, status: @app.status, store_url: @app.store_url, theme_color: @app.theme_color, title: @app.title, twitter_url: @app.twitter_url, user_id: @app.user_id, user_subscription: @app.user_subscription, vimeo_url: @app.vimeo_url, youtube_url: @app.youtube_url }
    assert_redirected_to app_path(assigns(:app))
  end

  test "should destroy app" do
    assert_difference('App.count', -1) do
      delete :destroy, id: @app
    end

    assert_redirected_to apps_path
  end
end
