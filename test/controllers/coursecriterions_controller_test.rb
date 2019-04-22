require 'test_helper'

class CoursecriterionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coursecriterion = coursecriterions(:one)
  end

  test "should get index" do
    get coursecriterions_url
    assert_response :success
  end

  test "should get new" do
    get new_coursecriterion_url
    assert_response :success
  end

  test "should create coursecriterion" do
    assert_difference('Coursecriterion.count') do
      post coursecriterions_url, params: { coursecriterion: { Accept: @coursecriterion.Accept, Exceed: @coursecriterion.Exceed, Poor: @coursecriterion.Poor } }
    end

    assert_redirected_to coursecriterion_url(Coursecriterion.last)
  end

  test "should show coursecriterion" do
    get coursecriterion_url(@coursecriterion)
    assert_response :success
  end

  test "should get edit" do
    get edit_coursecriterion_url(@coursecriterion)
    assert_response :success
  end

  test "should update coursecriterion" do
    patch coursecriterion_url(@coursecriterion), params: { coursecriterion: { Accept: @coursecriterion.Accept, Exceed: @coursecriterion.Exceed, Poor: @coursecriterion.Poor } }
    assert_redirected_to coursecriterion_url(@coursecriterion)
  end

  test "should destroy coursecriterion" do
    assert_difference('Coursecriterion.count', -1) do
      delete coursecriterion_url(@coursecriterion)
    end

    assert_redirected_to coursecriterions_url
  end
end
