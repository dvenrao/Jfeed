require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { ad_expires_on: @job.ad_expires_on, ad_posting_on: @job.ad_posting_on, company_name: @job.company_name, company_website: @job.company_website, contact_email: @job.contact_email, contact_name: @job.contact_name, contact_number: @job.contact_number, experience: @job.experience, location: @job.location, position: @job.position, qualification: @job.qualification, responsibility: @job.responsibility, skill: @job.skill }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    put :update, id: @job, job: { ad_expires_on: @job.ad_expires_on, ad_posting_on: @job.ad_posting_on, company_name: @job.company_name, company_website: @job.company_website, contact_email: @job.contact_email, contact_name: @job.contact_name, contact_number: @job.contact_number, experience: @job.experience, location: @job.location, position: @job.position, qualification: @job.qualification, responsibility: @job.responsibility, skill: @job.skill }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
