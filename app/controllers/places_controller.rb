class PlacesController < ApplicationController
  # GET /places
  # GET /places.json
  def index
    @places = Place.all

    respond_to do |format|
      format.json { render json: @places }
    end
  end

  # GET /places/1
  # GET /places/1.json
  def show
    @place = Place.find(params[:id])

    respond_to do |format|
      format.json { render json: @place }
    end
  end

  # POST /places
  # POST /places.json
  def create
    @place = Place.new(params[:place])

    respond_to do |format|
      if @place.save
        format.json { render :json => @place}
      else
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /places/1
  # PUT /places/1.json
  def update
    @place = Place.find(params[:id])

    respond_to do |format|
      if @place.update_attributes(params[:place])
        format.json { head :no_content }
      else
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place = Place.find(params[:id])
    @place.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  # GET /places/search
  # GET /places/search.json
  def search
    @query = params[:query]
    search = Place.search do
      fulltext params[:query]
    end
    placesArray = search.results
    place_ids = Array.new
    placesArray.each do |place|
      place_ids <<  place.id
    end
    @places = Place.where(:id => place_ids)#.includes(:address)

    #@aw =  Averagewait.find_all_by_place_id(place_ids)
    render :json => @places#.to_json(:include => :address)
  end
end
