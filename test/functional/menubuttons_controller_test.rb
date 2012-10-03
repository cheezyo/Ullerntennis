require 'test_helper'

class MenubuttonsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Menubutton.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Menubutton.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Menubutton.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to menubutton_url(assigns(:menubutton))
  end

  def test_edit
    get :edit, :id => Menubutton.first
    assert_template 'edit'
  end

  def test_update_invalid
    Menubutton.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Menubutton.first
    assert_template 'edit'
  end

  def test_update_valid
    Menubutton.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Menubutton.first
    assert_redirected_to menubutton_url(assigns(:menubutton))
  end

  def test_destroy
    menubutton = Menubutton.first
    delete :destroy, :id => menubutton
    assert_redirected_to menubuttons_url
    assert !Menubutton.exists?(menubutton.id)
  end
end
