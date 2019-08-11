require 'test_helper'

class SelectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @select = selects(:one)
  end

  test "should get index" do
    get selects_url
    assert_response :success
  end

  test "should get new" do
    get new_select_url
    assert_response :success
  end

  test "should create select" do
    assert_difference('Select.count') do
      post selects_url, params: { select: {  } }
    end

    assert_redirected_to select_url(Select.last)
  end

  test "should show select" do
    get select_url(@select)
    assert_response :success
  end

  test "should get edit" do
    get edit_select_url(@select)
    assert_response :success
  end

  test "should update select" do
    patch select_url(@select), params: { select: {  } }
    assert_redirected_to select_url(@select)
  end

  test "should destroy select" do
    assert_difference('Select.count', -1) do
      delete select_url(@select)
    end

    assert_redirected_to selects_url
  end
end
