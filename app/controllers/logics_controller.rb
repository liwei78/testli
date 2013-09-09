class LogicsController < ApplicationController
  # GET /logics
  # GET /logics.json
  def index
    @logics = Logic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @logics }
    end
  end

  # GET /logics/1
  # GET /logics/1.json
  def show
    @logic = Logic.find(params[:id])
    @scenarios = @logic.scenarios.order(:position)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @logic }
    end
  end

  # GET /logics/new
  # GET /logics/new.json
  def new
    @logic = Logic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @logic }
    end
  end

  # GET /logics/1/edit
  def edit
    @logic = Logic.find(params[:id])
  end

  # POST /logics
  # POST /logics.json
  def create
    @logic = Logic.new(params[:logic])

    respond_to do |format|
      if @logic.save
        format.html { redirect_to @logic, notice: 'Logic was successfully created.' }
        format.json { render json: @logic, status: :created, location: @logic }
      else
        format.html { render action: "new" }
        format.json { render json: @logic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /logics/1
  # PUT /logics/1.json
  def update
    @logic = Logic.find(params[:id])

    respond_to do |format|
      if @logic.update_attributes(params[:logic])
        format.html { redirect_to @logic, notice: 'Logic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @logic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logics/1
  # DELETE /logics/1.json
  def destroy
    @logic = Logic.find(params[:id])
    @logic.destroy

    respond_to do |format|
      format.html { redirect_to logics_url }
      format.json { head :no_content }
    end
  end
end
