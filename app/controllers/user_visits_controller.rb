class UserVisitsController < ApplicationController
  # GET /user_visits
  # GET /user_visits.json
  def index
    @user_visits = UserVisit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_visits }
    end
  end

  # GET /user_visits/1
  # GET /user_visits/1.json
  def show
    @user_visit = UserVisit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_visit }
    end
  end

  # GET /user_visits/new
  # GET /user_visits/new.json
  def new
    @user_visit = UserVisit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_visit }
    end
  end

  # GET /user_visits/1/edit
  def edit
    @user_visit = UserVisit.find(params[:id])
  end

  # POST /user_visits
  # POST /user_visits.json
  def create
    @user_visit = UserVisit.new(params[:user_visit])

    respond_to do |format|
      if @user_visit.save
        format.html { redirect_to @user_visit, notice: 'User visit was successfully created.' }
        format.json { render json: @user_visit, status: :created, location: @user_visit }
      else
        format.html { render action: "new" }
        format.json { render json: @user_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_visits/1
  # PUT /user_visits/1.json
  def update
    @user_visit = UserVisit.find(params[:id])

    respond_to do |format|
      if @user_visit.update_attributes(params[:user_visit])
        format.html { redirect_to @user_visit, notice: 'User visit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_visits/1
  # DELETE /user_visits/1.json
  def destroy
    @user_visit = UserVisit.find(params[:id])
    @user_visit.destroy

    respond_to do |format|
      format.html { redirect_to user_visits_url }
      format.json { head :no_content }
    end
  end
end
