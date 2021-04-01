require 'test_helper'

class TabulatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tabulator = tabulators(:one)
  end

  test "should get index" do
    get tabulators_url
    assert_response :success
  end

  test "should get new" do
    get new_tabulator_url
    assert_response :success
  end

  test "should create tabulator" do
    assert_difference('Tabulator.count') do
      post tabulators_url, params: { tabulator: { name: @tabulator.name } }
    end

    assert_redirected_to tabulator_url(Tabulator.last)
  end

  test "should show tabulator" do
    get tabulator_url(@tabulator)
    assert_response :success
  end

  test "should get edit" do
    get edit_tabulator_url(@tabulator)
    assert_response :success
  end

  test "should update tabulator" do
    patch tabulator_url(@tabulator), params: { tabulator: { name: @tabulator.name } }
    assert_redirected_to tabulator_url(@tabulator)
  end

  test "should destroy tabulator" do
    assert_difference('Tabulator.count', -1) do
      delete tabulator_url(@tabulator)
    end

    assert_redirected_to tabulators_url
  end
end
