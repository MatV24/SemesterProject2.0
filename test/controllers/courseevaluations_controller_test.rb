require 'test_helper'

class CourseevaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @courseevaluation = courseevaluations(:one)
  end

  test "should get index" do
    get courseevaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_courseevaluation_url
    assert_response :success
  end

  test "should create courseevaluation" do
    assert_difference('Courseevaluation.count') do
      post courseevaluations_url, params: { courseevaluation: { course_id: @courseevaluation.course_id, criteriathreshold: @courseevaluation.criteriathreshold, criterion_id: @courseevaluation.criterion_id, faculty_id: @courseevaluation.faculty_id } }
    end

    assert_redirected_to courseevaluation_url(Courseevaluation.last)
  end

  test "should show courseevaluation" do
    get courseevaluation_url(@courseevaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_courseevaluation_url(@courseevaluation)
    assert_response :success
  end

  test "should update courseevaluation" do
    patch courseevaluation_url(@courseevaluation), params: { courseevaluation: { course_id: @courseevaluation.course_id, criteriathreshold: @courseevaluation.criteriathreshold, criterion_id: @courseevaluation.criterion_id, faculty_id: @courseevaluation.faculty_id } }
    assert_redirected_to courseevaluation_url(@courseevaluation)
  end

  test "should destroy courseevaluation" do
    assert_difference('Courseevaluation.count', -1) do
      delete courseevaluation_url(@courseevaluation)
    end

    assert_redirected_to courseevaluations_url
  end
end
