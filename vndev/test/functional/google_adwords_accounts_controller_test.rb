require 'test_helper'

class GoogleAdwordsAccountsControllerTest < ActionController::TestCase
  setup do
    @google_adwords_account = google_adwords_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:google_adwords_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create google_adwords_account" do
    assert_difference('GoogleAdwordsAccount.count') do
      post :create, google_adwords_account: @google_adwords_account.attributes
    end

    assert_redirected_to google_adwords_account_path(assigns(:google_adwords_account))
  end

  test "should show google_adwords_account" do
    get :show, id: @google_adwords_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @google_adwords_account
    assert_response :success
  end

  test "should update google_adwords_account" do
    put :update, id: @google_adwords_account, google_adwords_account: @google_adwords_account.attributes
    assert_redirected_to google_adwords_account_path(assigns(:google_adwords_account))
  end

  test "should destroy google_adwords_account" do
    assert_difference('GoogleAdwordsAccount.count', -1) do
      delete :destroy, id: @google_adwords_account
    end

    assert_redirected_to google_adwords_accounts_path
  end
end
