require 'test_helper'

class OutmailsControllerTest < ActionController::TestCase
  setup do
    @outmail = outmails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outmails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outmail" do
    assert_difference('Outmail.count') do
      post :create, outmail: { body: @outmail.body, subject: @outmail.subject, to: @outmail.to }
    end

    assert_redirected_to outmail_path(assigns(:outmail))
  end

  test "should show outmail" do
    get :show, id: @outmail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outmail
    assert_response :success
  end

  test "should update outmail" do
    patch :update, id: @outmail, outmail: { body: @outmail.body, subject: @outmail.subject, to: @outmail.to }
    assert_redirected_to outmail_path(assigns(:outmail))
  end

  test "should destroy outmail" do
    assert_difference('Outmail.count', -1) do
      delete :destroy, id: @outmail
    end

    assert_redirected_to outmails_path
  end
end
