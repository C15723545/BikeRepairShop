require 'test_helper'

class RepairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repair = repairs(:one)
  end

  test "should get index" do
    get repairs_url
    assert_response :success
  end

  test "should get new" do
    get new_repair_url
    assert_response :success
  end

  test "should create repair" do
    assert_difference('Repair.count') do
      post repairs_url, params: { repair: { cost_quote: @repair.cost_quote, customer_id: @repair.customer_id, date_out: @repair.date_out, description: @repair.description, job_id: @repair.job_id, labour_cost: @repair.labour_cost, repair_detail: @repair.repair_detail, repair_photo: @repair.repair_photo, repair_type: @repair.repair_type, required_date: @repair.required_date, total_cost: @repair.total_cost } }
    end

    assert_redirected_to repair_url(Repair.last)
  end

  test "should show repair" do
    get repair_url(@repair)
    assert_response :success
  end

  test "should get edit" do
    get edit_repair_url(@repair)
    assert_response :success
  end

  test "should update repair" do
    patch repair_url(@repair), params: { repair: { cost_quote: @repair.cost_quote, customer_id: @repair.customer_id, date_out: @repair.date_out, description: @repair.description, job_id: @repair.job_id, labour_cost: @repair.labour_cost, repair_detail: @repair.repair_detail, repair_photo: @repair.repair_photo, repair_type: @repair.repair_type, required_date: @repair.required_date, total_cost: @repair.total_cost } }
    assert_redirected_to repair_url(@repair)
  end

  test "should destroy repair" do
    assert_difference('Repair.count', -1) do
      delete repair_url(@repair)
    end

    assert_redirected_to repairs_url
  end
end
