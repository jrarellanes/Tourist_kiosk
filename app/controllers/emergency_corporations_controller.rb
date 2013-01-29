class EmergencyCorporationsController < ApplicationController
  # GET /emergency_corporations
  # GET /emergency_corporations.json
  def index
    @emergency_corporations = EmergencyCorporation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emergency_corporations }
    end
  end

  # GET /emergency_corporations/1
  # GET /emergency_corporations/1.json
  def show
    @emergency_corporation = EmergencyCorporation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @emergency_corporation }
    end
  end

  # GET /emergency_corporations/new
  # GET /emergency_corporations/new.json
  def new
    @emergency_corporation = EmergencyCorporation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @emergency_corporation }
    end
  end

  # GET /emergency_corporations/1/edit
  def edit
    @emergency_corporation = EmergencyCorporation.find(params[:id])
  end

  # POST /emergency_corporations
  # POST /emergency_corporations.json
  def create
    @emergency_corporation = EmergencyCorporation.new(params[:emergency_corporation])

    respond_to do |format|
      if @emergency_corporation.save
        format.html { redirect_to @emergency_corporation, notice: 'Emergency corporation was successfully created.' }
        format.json { render json: @emergency_corporation, status: :created, location: @emergency_corporation }
      else
        format.html { render action: "new" }
        format.json { render json: @emergency_corporation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emergency_corporations/1
  # PUT /emergency_corporations/1.json
  def update
    @emergency_corporation = EmergencyCorporation.find(params[:id])

    respond_to do |format|
      if @emergency_corporation.update_attributes(params[:emergency_corporation])
        format.html { redirect_to @emergency_corporation, notice: 'Emergency corporation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @emergency_corporation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emergency_corporations/1
  # DELETE /emergency_corporations/1.json
  def destroy
    @emergency_corporation = EmergencyCorporation.find(params[:id])
    @emergency_corporation.destroy

    respond_to do |format|
      format.html { redirect_to emergency_corporations_url }
      format.json { head :no_content }
    end
  end
end
