require 'test_helper'

class campaignsControllerTest < ActionController::TestCase
  setup do
    @campaigns = campaigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campaigns" do
    assert_difference('campaigns.count') do
      post :create, campaigns: { creator_id: @campaigns.creator_id, description: @campaigns.description, member_id: @campaigns.member_id, name: @campaigns.name }
    end

    assert_redirected_to campaigns_path(assigns(:campaigns))
  end

  test "should show campaigns" do
    get :show, id: @campaigns
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campaigns
    assert_response :success
  end

  test "should update campaigns" do
    patch :update, id: @campaigns, campaigns: { creator_id: @campaigns.creator_id, description: @campaigns.description, member_id: @campaigns.member_id, name: @campaigns.name }
    assert_redirected_to campaigns_path(assigns(:campaigns))
  end

  test "should destroy campaigns" do
    assert_difference('campaigns.count', -1) do
      delete :destroy, id: @campaigns
    end

    assert_redirected_to campaigns_path
  end
end
