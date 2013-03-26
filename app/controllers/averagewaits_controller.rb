class AveragewaitsController < ApplicationController
  # GET /averagewaits
  # GET /averagewaits.json
  def index
    @averagewaits = Averagewait.all

    respond_to do |format|
      format.json { render json: @averagewaits }
    end
  end

  # GET /averagewaits/1
  # GET /averagewaits/1.json
  def show
    @averagewait = Averagewait.find(params[:id])

    respond_to do |format|
      format.json { render json: @averagewait }
    end
  end

  # GET /averagewaits/new
  # GET /averagewaits/new.json
  def new
    @averagewait = Averagewait.new

    respond_to do |format|
      format.json { render json: @averagewait }
    end
  end

  # GET /averagewaits/1/edit
  def edit
    @averagewait = Averagewait.find(params[:id])
  end

  # POST /averagewaits
  # POST /averagewaits.json
  def create
    @averagewait = Averagewait.new(params[:averagewait])

    respond_to do |format|
      if @averagewait.save
        format.json { render json: @averagewait, status: :created, location: @averagewait }
      else
        format.json { render json: @averagewait.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /averagewaits/1
  # PUT /averagewaits/1.json
  def update
    @averagewait = Averagewait.find(params[:id])

    respond_to do |format|
      if @averagewait.update_attributes(params[:averagewait])
        format.json { head :no_content }
      else
        format.json { render json: @averagewait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /averagewaits/1
  # DELETE /averagewaits/1.json
  def destroy
    @averagewait = Averagewait.find(params[:id])
    @averagewait.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
