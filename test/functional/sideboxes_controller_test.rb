require 'test_helper'

class SideboxesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Sidebox.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Sidebox.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Sidebox.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to sidebox_url(assigns(:sidebox))
  end

  def test_edit
    get :edit, :id => Sidebox.first
    assert_template 'edit'
  end

  def test_update_invalid
    Sidebox.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Sidebox.first
    assert_template 'edit'
  end

  def test_update_valid
    Sidebox.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Sidebox.first
    assert_redirected_to sidebox_url(assigns(:sidebox))
  end

  def test_destroy
    sidebox = Sidebox.first
    delete :destroy, :id => sidebox
    assert_redirected_to sideboxes_url
    assert !Sidebox.exists?(sidebox.id)
  end
end
