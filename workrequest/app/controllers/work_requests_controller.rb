class WorkRequestsController < ApplicationController
  before_filter :authenticate_user!
  # GET /work_requests
  # GET /work_requests.json
  def index
    @work_requests = WorkRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @work_requests }
    end
  end

  # GET /work_requests/1
  # GET /work_requests/1.json
  def show
    @work_request = WorkRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @work_request }
    end
  end

  # GET /work_requests/new
  # GET /work_requests/new.json
  def new
    @work_request = WorkRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @work_request }
    end
  end

  # GET /work_requests/1/edit
  def edit
    @work_request = WorkRequest.find(params[:id])
  end

  # POST /work_requests
  # POST /work_requests.json
  def create
    @work_request = WorkRequest.new(params[:work_request])
    Rails.logger.debug "Params value: " 
    Rails.logger.debug params[:work_request]

    respond_to do |format|
      if @work_request.save
        format.html { redirect_to @work_request, notice: 'Work request was successfully created.' }
        format.json { render json: @work_request, status: :created, location: @work_request }
      else
        format.html { render action: "new" }
        format.json { render json: @work_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /work_requests/1
  # PUT /work_requests/1.json
  def update
    @work_request = WorkRequest.find(params[:id])

    respond_to do |format|
      if @work_request.update_attributes(params[:work_request])
        format.html { redirect_to @work_request, notice: 'Work request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @work_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_requests/1
  # DELETE /work_requests/1.json
  def destroy
    @work_request = WorkRequest.find(params[:id])
    @work_request.destroy

    respond_to do |format|
      format.html { redirect_to work_requests_url }
      format.json { head :no_content }
    end
  end
end
