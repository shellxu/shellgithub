require 'test_helper'

class GoogleMccAccountsControllerTest < ActionController::TestCase
  setup do
    @google_mcc_account = google_mcc_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:google_mcc_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create google_mcc_account" do
    assert_difference('GoogleMccAccount.count') do
      post :create, google_mcc_account: @google_mcc_account.attributes
    end

    assert_redirected_to google_mcc_account_path(assigns(:google_mcc_account))
  end

  test "should show google_mcc_account" do
    get :show, id: @google_mcc_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @google_mcc_account
    assert_response :success
  end

  test "should update google_mcc_account" do
    put :update, id: @google_mcc_account, google_mcc_account: @google_mcc_account.attributes
    assert_redirected_to google_mcc_account_path(assigns(:google_mcc_account))
  end

  test "should destroy google_mcc_account" do
    assert_difference('GoogleMccAccount.count', -1) do
      delete :destroy, id: @google_mcc_account
    end

    assert_redirected_to google_mcc_accounts_path
  end
end
