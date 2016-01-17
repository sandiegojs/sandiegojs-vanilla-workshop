require 'test_helper'

class FormsControllerTest < ActionController::TestCase
  setup do
    @form = forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forms)
  end

  test "should create form" do
    assert_difference('Form.count') do
      post :create, form: { bio: @form.bio, city: @form.city, email: @form.email, github: @form.github, name: @form.name, state: @form.state, twitter: @form.twitter }
    end

    assert_response 201
  end

  test "should show form" do
    get :show, id: @form
    assert_response :success
  end

  test "should update form" do
    put :update, id: @form, form: { bio: @form.bio, city: @form.city, email: @form.email, github: @form.github, name: @form.name, state: @form.state, twitter: @form.twitter }
    assert_response 204
  end

  test "should destroy form" do
    assert_difference('Form.count', -1) do
      delete :destroy, id: @form
    end

    assert_response 204
  end
end
