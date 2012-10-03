require 'test_helper'

class SubmenubuttonsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Submenubutton.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Submenubutton.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Submenubutton.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to submenubutton_url(assigns(:submenubutton))
  end

  def test_edit
    get :edit, :id => Submenubutton.first
    assert_template 'edit'
  end

  def test_update_invalid
    Submenubutton.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Submenubutton.first
    assert_template 'edit'
  end

  def test_update_valid
    Submenubutton.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Submenubutton.first
    assert_redirected_to submenubutton_url(assigns(:submenubutton))
  end

  def test_destroy
    submenubutton = Submenubutton.first
    delete :destroy, :id => submenubutton
    assert_redirected_to submenubuttons_url
    assert !Submenubutton.exists?(submenubutton.id)
  end
end
