require 'test_helper'

class VoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voice = voices(:one)
  end

  test "should get index" do
    get voices_url
    assert_response :success
  end

  test "should get new" do
    get new_voice_url
    assert_response :success
  end

  test "should create voice" do
    assert_difference('Voice.count') do
      post voices_url, params: { voice: { contact_details: @voice.contact_details, evaluator_comment: @voice.evaluator_comment, evaluator_id: @voice.evaluator_id, item_five: @voice.item_five, item_four: @voice.item_four, item_one: @voice.item_one, item_three: @voice.item_three, item_two: @voice.item_two, rank: @voice.rank, response_result: @voice.response_result, score: @voice.score, staff_num: @voice.staff_num, status: @voice.status, year_month: @voice.year_month } }
    end

    assert_redirected_to voice_url(Voice.last)
  end

  test "should show voice" do
    get voice_url(@voice)
    assert_response :success
  end

  test "should get edit" do
    get edit_voice_url(@voice)
    assert_response :success
  end

  test "should update voice" do
    patch voice_url(@voice), params: { voice: { contact_details: @voice.contact_details, evaluator_comment: @voice.evaluator_comment, evaluator_id: @voice.evaluator_id, item_five: @voice.item_five, item_four: @voice.item_four, item_one: @voice.item_one, item_three: @voice.item_three, item_two: @voice.item_two, rank: @voice.rank, response_result: @voice.response_result, score: @voice.score, staff_num: @voice.staff_num, status: @voice.status, year_month: @voice.year_month } }
    assert_redirected_to voice_url(@voice)
  end

  test "should destroy voice" do
    assert_difference('Voice.count', -1) do
      delete voice_url(@voice)
    end

    assert_redirected_to voices_url
  end
end
