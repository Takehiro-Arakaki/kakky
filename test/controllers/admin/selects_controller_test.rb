require 'test_helper'

class Admin::SelectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_select = admin_selects(:one)
  end

  test "should get index" do
    get admin_selects_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_select_url
    assert_response :success
  end

  test "should create admin_select" do
    assert_difference('Admin::Select.count') do
      post admin_selects_url, params: { admin_select: { content: @admin_select.content, is_right: @admin_select.is_right, question_id: @admin_select.question_id } }
    end

    assert_redirected_to admin_select_url(Admin::Select.last)
  end

  test "should show admin_select" do
    get admin_select_url(@admin_select)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_select_url(@admin_select)
    assert_response :success
  end

  test "should update admin_select" do
    patch admin_select_url(@admin_select), params: { admin_select: { content: @admin_select.content, is_right: @admin_select.is_right, question_id: @admin_select.question_id } }
    assert_redirected_to admin_select_url(@admin_select)
  end

  test "should destroy admin_select" do
    assert_difference('Admin::Select.count', -1) do
      delete admin_select_url(@admin_select)
    end

    assert_redirected_to admin_selects_url
  end
end
