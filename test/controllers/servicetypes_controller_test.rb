require 'test_helper'

class ServicetypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servicetype = servicetypes(:one)
  end

  test "should get index" do
    get servicetypes_url
    assert_response :success
  end

  test "should get new" do
    get new_servicetype_url
    assert_response :success
  end

  test "should create servicetype" do
    assert_difference('Servicetype.count') do
      post servicetypes_url, params: { servicetype: { name: @servicetype.name } }
    end

    assert_redirected_to servicetype_url(Servicetype.last)
  end

  test "should show servicetype" do
    get servicetype_url(@servicetype)
    assert_response :success
  end

  test "should get edit" do
    get edit_servicetype_url(@servicetype)
    assert_response :success
  end

  test "should update servicetype" do
    patch servicetype_url(@servicetype), params: { servicetype: { name: @servicetype.name } }
    assert_redirected_to servicetype_url(@servicetype)
  end

  test "should destroy servicetype" do
    assert_difference('Servicetype.count', -1) do
      delete servicetype_url(@servicetype)
    end

    assert_redirected_to servicetypes_url
  end
end
