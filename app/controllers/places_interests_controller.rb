class PlacesInterestsController < ApplicationController
  # GET /places_interests
  # GET /places_interests.json
  def index
    @places_interests = PlacesInterest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @places_interests }
    end
  end

  # GET /places_interests/1
  # GET /places_interests/1.json
  def show
    @places_interest = PlacesInterest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @places_interest }
    end
  end

  # GET /places_interests/new
  # GET /places_interests/new.json
  def new
    @places_interest = PlacesInterest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @places_interest }
    end
  end

  # GET /places_interests/1/edit
  def edit
    @places_interest = PlacesInterest.find(params[:id])
  end

  # POST /places_interests
  # POST /places_interests.json
  def create
    @places_interest = PlacesInterest.new(params[:places_interest])

    respond_to do |format|
      if @places_interest.save
        format.html { redirect_to @places_interest, notice: 'Places interest was successfully created.' }
        format.json { render json: @places_interest, status: :created, location: @places_interest }
      else
        format.html { render action: "new" }
        format.json { render json: @places_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /places_interests/1
  # PUT /places_interests/1.json
  def update
    @places_interest = PlacesInterest.find(params[:id])

    respond_to do |format|
      if @places_interest.update_attributes(params[:places_interest])
        format.html { redirect_to @places_interest, notice: 'Places interest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @places_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places_interests/1
  # DELETE /places_interests/1.json
  def destroy
    @places_interest = PlacesInterest.find(params[:id])
    @places_interest.destroy

    respond_to do |format|
      format.html { redirect_to places_interests_url }
      format.json { head :no_content }
    end
  end
end
