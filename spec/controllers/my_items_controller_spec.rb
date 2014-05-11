require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MyItemsController do

  # This should return the minimal set of attributes required to create a valid
  # MyItem. As you add validations to MyItem, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "component_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MyItemsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all my_items as @my_items" do
      my_item = MyItem.create! valid_attributes
      get :index, {}, valid_session
      assigns(:my_items).should eq([my_item])
    end
  end

  describe "GET show" do
    it "assigns the requested my_item as @my_item" do
      my_item = MyItem.create! valid_attributes
      get :show, {:id => my_item.to_param}, valid_session
      assigns(:my_item).should eq(my_item)
    end
  end

  describe "GET new" do
    it "assigns a new my_item as @my_item" do
      get :new, {}, valid_session
      assigns(:my_item).should be_a_new(MyItem)
    end
  end

  describe "GET edit" do
    it "assigns the requested my_item as @my_item" do
      my_item = MyItem.create! valid_attributes
      get :edit, {:id => my_item.to_param}, valid_session
      assigns(:my_item).should eq(my_item)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MyItem" do
        expect {
          post :create, {:my_item => valid_attributes}, valid_session
        }.to change(MyItem, :count).by(1)
      end

      it "assigns a newly created my_item as @my_item" do
        post :create, {:my_item => valid_attributes}, valid_session
        assigns(:my_item).should be_a(MyItem)
        assigns(:my_item).should be_persisted
      end

      it "redirects to the created my_item" do
        post :create, {:my_item => valid_attributes}, valid_session
        response.should redirect_to(MyItem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved my_item as @my_item" do
        # Trigger the behavior that occurs when invalid params are submitted
        MyItem.any_instance.stub(:save).and_return(false)
        post :create, {:my_item => { "component_id" => "invalid value" }}, valid_session
        assigns(:my_item).should be_a_new(MyItem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        MyItem.any_instance.stub(:save).and_return(false)
        post :create, {:my_item => { "component_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested my_item" do
        my_item = MyItem.create! valid_attributes
        # Assuming there are no other my_items in the database, this
        # specifies that the MyItem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        MyItem.any_instance.should_receive(:update).with({ "component_id" => "1" })
        put :update, {:id => my_item.to_param, :my_item => { "component_id" => "1" }}, valid_session
      end

      it "assigns the requested my_item as @my_item" do
        my_item = MyItem.create! valid_attributes
        put :update, {:id => my_item.to_param, :my_item => valid_attributes}, valid_session
        assigns(:my_item).should eq(my_item)
      end

      it "redirects to the my_item" do
        my_item = MyItem.create! valid_attributes
        put :update, {:id => my_item.to_param, :my_item => valid_attributes}, valid_session
        response.should redirect_to(my_item)
      end
    end

    describe "with invalid params" do
      it "assigns the my_item as @my_item" do
        my_item = MyItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MyItem.any_instance.stub(:save).and_return(false)
        put :update, {:id => my_item.to_param, :my_item => { "component_id" => "invalid value" }}, valid_session
        assigns(:my_item).should eq(my_item)
      end

      it "re-renders the 'edit' template" do
        my_item = MyItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MyItem.any_instance.stub(:save).and_return(false)
        put :update, {:id => my_item.to_param, :my_item => { "component_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested my_item" do
      my_item = MyItem.create! valid_attributes
      expect {
        delete :destroy, {:id => my_item.to_param}, valid_session
      }.to change(MyItem, :count).by(-1)
    end

    it "redirects to the my_items list" do
      my_item = MyItem.create! valid_attributes
      delete :destroy, {:id => my_item.to_param}, valid_session
      response.should redirect_to(my_items_url)
    end
  end

end
