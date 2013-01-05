class JobsController < ApplicationController
  skip_before_filter :authorize, :only => [:index,:show, :new, :create,:job_location,:job_search]
  before_filter :default_form_values
  # GET /jobs
  # GET /jobs.json
  def index
    #@jobs = Job.order("created_at").all
    @jobs = Job.paginate(:page => params[:page], :per_page => 50).order("created_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jobs }
    end
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    @job = Job.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job }
    end
  end

  # GET /jobs/new
  # GET /jobs/new.json
  def new
    @job = Job.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job }
    end
  end

  # GET /jobs/1/edit
  def edit
    @job = Job.find(params[:id])
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(params[:job])

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render json: @job, status: :created, location: @job }
      else
        format.html { render action: "new" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jobs/1
  # PUT /jobs/1.json
  def update
    @job = Job.find(params[:id])

    respond_to do |format|
      if @job.update_attributes(params[:job])
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end

  def job_location
    #@jobs = Job.find_all_by_location(params[:location])
    @title="#{params[:location]} Jobs"
    @meta_tag_desc="Find thousands of jobs in #{params[:location]}. Search and apply online for jobs in #{params[:location]}. Begin your best job search today."
    @jobs = Job.paginate(:page => params[:page], :per_page => 50).where(:location => params[:location]).order("created_at desc")
    render :'jobs/index'
  end

  def job_search
    @title="#{params[:search]} Top 50 Best Jobs"
    @meta_tag_desc = "Search #{params[:search]} jobs in India. Search job openings on #{params[:search]}, see if they fit - company salaries, reviews, and more posted by employees"
    @jobs = Job.paginate(:page => params[:page], :per_page => 50).order("created_at desc").search(params[:search])
    render :'jobs/index'
  end

  def default_form_values
    log = CustomLogger.new("user_access")
    log.info("ip_address: #{request.remote_ip}, Url: #{request.url}")
  end


end
