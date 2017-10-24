require 'test_helper'

class SongUsersControllerTest < ActionController::TestCase
  setup do
    @song_user = song_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:song_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song_user" do
    assert_difference('SongUser.count') do
      post :create, song_user: { song_id: @song_user.song_id, user_id: @song_user.user_id }
    end

    assert_redirected_to song_user_path(assigns(:song_user))
  end

  test "should show song_user" do
    get :show, id: @song_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song_user
    assert_response :success
  end

  test "should update song_user" do
    patch :update, id: @song_user, song_user: { song_id: @song_user.song_id, user_id: @song_user.user_id }
    assert_redirected_to song_user_path(assigns(:song_user))
  end

  test "should destroy song_user" do
    assert_difference('SongUser.count', -1) do
      delete :destroy, id: @song_user
    end

    assert_redirected_to song_users_path
  end
end
