class CasesController < ApplicationController
  # GET /cases
  # GET /cases.json
  def index
    @scenario = Scenario.find(params[:scenario_id])
    @cases = @scenario.cases

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /cases/1
  # GET /cases/1.json
  def show
    @scenario = Scenario.find(params[:scenario_id])
    @case = @scenario.cases.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /cases/new
  # GET /cases/new.json
  def new
    @scenario = Scenario.find(params[:scenario_id])
    @case = @scenario.cases.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /cases/1/edit
  def edit
    @scenario = Scenario.find(params[:scenario_id])
    @case = @scenario.cases.find(params[:id])
  end

  # POST /cases
  # POST /cases.json
  def create
    @scenario = Scenario.find(params[:scenario_id])
    @case = @scenario.cases.new(params[:case])

    respond_to do |format|
      if @case.save
        @scenario.cases << @case
        format.html { redirect_to scenario_case_path(@scenario, @case), notice: 'Case was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /cases/1
  # PUT /cases/1.json
  def update
    @scenario = Scenario.find(params[:scenario_id])
    @case = @scenario.cases.find(params[:id])

    respond_to do |format|
      if @case.update_attributes(params[:case])
        format.html { redirect_to scenario_case_path(@scenario, @case), notice: 'Case was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /cases/1
  # DELETE /cases/1.json
  def destroy
    @scenario = Scenario.find(params[:scenario_id])
    @case = @scenario.cases.find(params[:id])
    @case.destroy

    respond_to do |format|
      format.html { redirect_to scenario_cases_path(@scenario) }
    end
  end
end
