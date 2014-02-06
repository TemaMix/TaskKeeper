require 'spec_helper'

describe  Api::TasksController do

  let(:task1) {create(:task) }
  let(:task2) {create(:task) }
  describe "api::index" do
    before { task1; task2}
    it "should return json tasks" do
      get :index
      JSON.parse(response.body).should == [
          {'id' => task1.id,'title' => task1.title, 'text' => task1.text, 'complete' => false},
          {'id' => task2.id,'title' => task2.title, 'text' => task2.text, 'complete' => false}
      ]
    end
  end

  describe "api::create" do
    let(:post_create) do
      post :create, task: {title:'first',text:'text'}
    end

    it "add record" do
      expect{post_create}.to change(Task, :count).by(1)
    end

    it "return 200" do
      post_create
      expect(response).to be_success
    end

    it "should return json of the just created record" do
      post_create
      expect(JSON.parse(response.body)['id']).to be_an(Integer)
      expect(JSON.parse(response.body)['complete']).to eq(false)
    end

  end

  describe "api::update" do
    let(:task_update) do
      patch :update, id: task1.id, task: {title: 'title update',text: "text update", complete: true}
    end

    it "return 200" do
      task_update
      response.should be_success
    end

    it "update  task parameters" do
      task_update
      expect(task1.reload.title).to eq("title update")
      expect(task1.reload.text).to eq("text update")
      expect(task1.reload.complete).to eq(true)
    end


  end

  describe "api::destroy" do
    before { task1 }
    let(:delete_task) do
      delete :destroy,  id: task1.id
    end

    it "task remove" do
      expect { delete_task }.to change(Task, :count).by(-1)
    end


  end




end
