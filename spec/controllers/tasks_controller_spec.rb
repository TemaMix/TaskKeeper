require 'spec_helper'

describe TasksController do

  describe "action index" do
    it "should redirect to the index action tasks controller" do
      get :index
      response.should be_ok
      response.should render_template('index')
    end


  end

end
