require 'test_helper'

class PlaylistUsersControllerTest < ActionController::TestCase
  setup do
    @playlist_user = playlist_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:playlist_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create playlist_user" do
    assert_difference('PlaylistUser.count') do
      post :create, playlist_user: { playlist_id: @playlist_user.playlist_id, user_id: @playlist_user.user_id }
    end

    assert_redirected_to playlist_user_path(assigns(:playlist_user))
  end

  test "should show playlist_user" do
    get :show, id: @playlist_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @playlist_user
    assert_response :success
  end

  test "should update playlist_user" do
    patch :update, id: @playlist_user, playlist_user: { playlist_id: @playlist_user.playlist_id, user_id: @playlist_user.user_id }
    assert_redirected_to playlist_user_path(assigns(:playlist_user))
  end

  test "should destroy playlist_user" do
    assert_difference('PlaylistUser.count', -1) do
      delete :destroy, id: @playlist_user
    end

    assert_redirected_to playlist_users_path
  end
end
