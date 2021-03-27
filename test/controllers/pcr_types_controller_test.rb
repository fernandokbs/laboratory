require 'test_helper'

class PcrTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pcr_type = pcr_types(:one)
  end

  test "should get index" do
    get pcr_types_url
    assert_response :success
  end

  test "should get new" do
    get new_pcr_type_url
    assert_response :success
  end

  test "should create pcr_type" do
    assert_difference('PcrType.count') do
      post pcr_types_url, params: { pcr_type: { name: @pcr_type.name } }
    end

    assert_redirected_to pcr_type_url(PcrType.last)
  end

  test "should show pcr_type" do
    get pcr_type_url(@pcr_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_pcr_type_url(@pcr_type)
    assert_response :success
  end

  test "should update pcr_type" do
    patch pcr_type_url(@pcr_type), params: { pcr_type: { name: @pcr_type.name } }
    assert_redirected_to pcr_type_url(@pcr_type)
  end

  test "should destroy pcr_type" do
    assert_difference('PcrType.count', -1) do
      delete pcr_type_url(@pcr_type)
    end

    assert_redirected_to pcr_types_url
  end
end
