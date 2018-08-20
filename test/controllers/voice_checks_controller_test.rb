require 'test_helper'

class VoiceChecksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voice_check = voice_checks(:one)
  end

  test "should get index" do
    get voice_checks_url
    assert_response :success
  end

  test "should get new" do
    get new_voice_check_url
    assert_response :success
  end

  test "should create voice_check" do
    assert_difference('VoiceCheck.count') do
      post voice_checks_url, params: { voice_check: { business_miss: @voice_check.business_miss, compliance_miss: @voice_check.compliance_miss, contact_details: @voice_check.contact_details, customer_miss: @voice_check.customer_miss, evaluator_comment: @voice_check.evaluator_comment, evaluator_id: @voice_check.evaluator_id, evaluator_name: @voice_check.evaluator_name, log_date: @voice_check.log_date, log_time: @voice_check.log_time, response_result: @voice_check.response_result, staff_num: @voice_check.staff_num, status: @voice_check.status } }
    end

    assert_redirected_to voice_check_url(VoiceCheck.last)
  end

  test "should show voice_check" do
    get voice_check_url(@voice_check)
    assert_response :success
  end

  test "should get edit" do
    get edit_voice_check_url(@voice_check)
    assert_response :success
  end

  test "should update voice_check" do
    patch voice_check_url(@voice_check), params: { voice_check: { business_miss: @voice_check.business_miss, compliance_miss: @voice_check.compliance_miss, contact_details: @voice_check.contact_details, customer_miss: @voice_check.customer_miss, evaluator_comment: @voice_check.evaluator_comment, evaluator_id: @voice_check.evaluator_id, evaluator_name: @voice_check.evaluator_name, log_date: @voice_check.log_date, log_time: @voice_check.log_time, response_result: @voice_check.response_result, staff_num: @voice_check.staff_num, status: @voice_check.status } }
    assert_redirected_to voice_check_url(@voice_check)
  end

  test "should destroy voice_check" do
    assert_difference('VoiceCheck.count', -1) do
      delete voice_check_url(@voice_check)
    end

    assert_redirected_to voice_checks_url
  end
end
