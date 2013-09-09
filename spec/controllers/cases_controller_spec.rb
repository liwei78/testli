require 'spec_helper'

describe CasesController do

  before do
    @scenario = FactoryGirl.create(:scenario)
  end

  let(:valid_attributes) { { "content" => "MyText" } }

  let(:valid_session) { {} }
  

  describe "GET index" do
    it "assigns all cases as @cases" do
      test_case = Case.create! valid_attributes
      @scenario.cases << test_case
      get :index, {scenario_id: @scenario.id}, valid_session
      expect(assigns(:cases)).to include(test_case)
      assigns(:cases).should eq([test_case])
    end
  end

  describe "GET show" do
    it "assigns the requested test_case as @case" do
      test_case = Case.create! valid_attributes
      @scenario.cases << test_case
      get :show, {:id => test_case.to_param, scenario_id: @scenario.id}, valid_session
      assigns(:case).should eq(test_case)
    end
  end

  describe "GET new" do
    it "assigns a new test_case as @case" do
      get :new, {scenario_id: @scenario.id}, valid_session
      assigns(:case).should be_a_new(Case)
    end
  end

  describe "GET edit" do
    it "assigns the requested test_case as @case" do
      test_case = Case.create! valid_attributes
      @scenario.cases << test_case
      get :edit, {:id => test_case.to_param, scenario_id: @scenario.id}, valid_session
      assigns(:case).should eq(test_case)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Case" do
        expect {
          post :create, {scenario_id: @scenario.id, :case => valid_attributes}, valid_session
        }.to change(Case, :count).by(1)
      end

      it "assigns a newly created test_case as @case" do
        post :create, {scenario_id: @scenario.id, :case => valid_attributes}, valid_session
        assigns(:case).should be_a(Case)
        assigns(:case).should be_persisted
        assigns(:case).should eq(@scenario.cases.last)
      end

      it "redirects to the created case" do
        post :create, {scenario_id: @scenario.id, :case => valid_attributes}, valid_session
        response.should redirect_to(scenario_case_path(@scenario, Case.last))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved test_case as @case" do
        Case.any_instance.stub(:save).and_return(false)
        post :create, {scenario_id: @scenario.id, :case => { "content" => "invalid value" }}, valid_session
        assigns(:case).should be_a_new(Case)
      end

      it "re-renders the 'new' template" do
        Case.any_instance.stub(:save).and_return(false)
        post :create, {scenario_id: @scenario.id, :case => { "content" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested case" do
        test_case = Case.create! valid_attributes
        @scenario.cases << test_case
        Case.any_instance.should_receive(:update_attributes).with({ "content" => "MyText" })
        put :update, {scenario_id: @scenario.id, :id => test_case.to_param, :case => { "content" => "MyText" }}, valid_session
      end

      it "assigns the requested test_case as @case" do
        test_case = Case.create! valid_attributes
        @scenario.cases << test_case
        put :update, {scenario_id: @scenario.id, :id => test_case.to_param, :case => valid_attributes}, valid_session
        assigns(:case).should eq(test_case)
      end

      it "redirects to the case" do
        test_case = Case.create! valid_attributes
        @scenario.cases << test_case
        put :update, {scenario_id: @scenario.id, :id => test_case.to_param, :case => valid_attributes}, valid_session
        response.should redirect_to(scenario_case_path(@scenario, test_case))
      end
    end

    describe "with invalid params" do
      it "assigns the test_case as @case" do
        test_case = Case.create! valid_attributes
        @scenario.cases << test_case
        Case.any_instance.stub(:save).and_return(false)
        put :update, {scenario_id: @scenario.id, :id => test_case.to_param, :case => { "content" => "invalid value" }}, valid_session
        assigns(:case).should eq(test_case)
      end

      it "re-renders the 'edit' template" do
        test_case = Case.create! valid_attributes
        @scenario.cases << test_case
        Case.any_instance.stub(:save).and_return(false)
        put :update, {scenario_id: @scenario.id, :id => test_case.to_param, :case => { "content" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested case" do
      test_case = Case.create! valid_attributes
      @scenario.cases << test_case
      expect {
        delete :destroy, {scenario_id: @scenario.id, :id => test_case.to_param}, valid_session
      }.to change(Case, :count).by(-1)
    end

    it "redirects to the cases list" do
      test_case = Case.create! valid_attributes
      @scenario.cases << test_case
      delete :destroy, {scenario_id: @scenario.id, :id => test_case.to_param}, valid_session
      response.should redirect_to(scenario_cases_path(@scenario))
    end
  end

end
