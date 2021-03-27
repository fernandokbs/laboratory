require 'test_helper'

class MethodTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @method_type = method_types(:one)
  end

  test "should get index" do
    get method_types_url
    assert_response :success
  end

  test "should get new" do
    get new_method_type_url
    assert_response :success
  end

  test "should create method_type" do
    assert_difference('MethodType.count') do
      post method_types_url, params: { method_type: { description: @method_type.description, diagnosis: @method_type.diagnosis, macroscopy: @method_type.macroscopy } }
    end

    assert_redirected_to method_type_url(MethodType.last)
  end

  test "should show method_type" do
    get method_type_url(@method_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_method_type_url(@method_type)
    assert_response :success
  end

  test "should update method_type" do
    patch method_type_url(@method_type), params: { method_type: { description: @method_type.description, diagnosis: @method_type.diagnosis, macroscopy: @method_type.macroscopy } }
    assert_redirected_to method_type_url(@method_type)
  end

  test "should destroy method_type" do
    assert_difference('MethodType.count', -1) do
      delete method_type_url(@method_type)
    end

    assert_redirected_to method_types_url
  end
end
