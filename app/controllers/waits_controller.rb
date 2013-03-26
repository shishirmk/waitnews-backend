class WaitsController < ApplicationController
  # GET /waits
  # GET /waits.json
  def index
    @waits = Wait.all

    respond_to do |format|
      format.json { render json: @waits }
    end
  end

  # GET /waits/1
  # GET /waits/1.json
  def show
    @wait = Wait.find(params[:id])

    respond_to do |format|
      format.json { render json: @wait }
    end
  end

  # GET /waits/new
  # GET /waits/new.json
  def new
    @wait = Wait.new

    respond_to do |format|
      format.json { render json: @wait }
    end
  end

  # GET /waits/1/edit
  def edit
    @wait = Wait.find(params[:id])
  end

  # POST /waits
  # POST /waits.json
  def create
    @wait = Wait.new(params[:wait])

    respond_to do |format|
      if @wait.save
        format.json { render json: @wait, status: :created, location: @wait }
      else
        format.json { render json: @wait.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /waits/1
  # PUT /waits/1.json
  def update
    @wait = Wait.find(params[:id])

    respond_to do |format|
      if @wait.update_attributes(params[:wait])
        format.json { head :no_content }
      else
        format.json { render json: @wait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waits/1
  # DELETE /waits/1.json
  def destroy
    @wait = Wait.find(params[:id])
    @wait.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
