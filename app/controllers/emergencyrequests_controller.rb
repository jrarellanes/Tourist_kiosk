class EmergencyrequestsController < ApplicationController
  # GET /emergencyrequests
  # GET /emergencyrequests.json
  def index
    @emergencyrequests = Emergencyrequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emergencyrequests }
    end
  end

  # GET /emergencyrequests/1
  # GET /emergencyrequests/1.json
  def show
    @emergencyrequest = Emergencyrequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @emergencyrequest }
    end
  end

  # GET /emergencyrequests/new
  # GET /emergencyrequests/new.json
  def new
    @emergencyrequest = Emergencyrequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @emergencyrequest }
    end
  end

  # GET /emergencyrequests/1/edit
  def edit
    @emergencyrequest = Emergencyrequest.find(params[:id])
  end

  # POST /emergencyrequests
  # POST /emergencyrequests.json
  def create
    @emergencyrequest = Emergencyrequest.new(params[:emergencyrequest])

    respond_to do |format|
      if @emergencyrequest.save
        format.html { redirect_to @emergencyrequest, notice: 'Emergencyrequest was successfully created.' }
        format.json { render json: @emergencyrequest, status: :created, location: @emergencyrequest }
      else
        format.html { render action: "new" }
        format.json { render json: @emergencyrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emergencyrequests/1
  # PUT /emergencyrequests/1.json
  def update
    @emergencyrequest = Emergencyrequest.find(params[:id])

    respond_to do |format|
      if @emergencyrequest.update_attributes(params[:emergencyrequest])
        format.html { redirect_to @emergencyrequest, notice: 'Emergencyrequest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @emergencyrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emergencyrequests/1
  # DELETE /emergencyrequests/1.json
  def destroy
    @emergencyrequest = Emergencyrequest.find(params[:id])
    @emergencyrequest.destroy

    respond_to do |format|
      format.html { redirect_to emergencyrequests_url }
      format.json { head :no_content }
    end
  end
end
