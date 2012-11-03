require 'test_helper'

class ContactinfosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Contactinfo.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Contactinfo.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Contactinfo.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to contactinfo_url(assigns(:contactinfo))
  end

  def test_edit
    get :edit, :id => Contactinfo.first
    assert_template 'edit'
  end

  def test_update_invalid
    Contactinfo.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Contactinfo.first
    assert_template 'edit'
  end

  def test_update_valid
    Contactinfo.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Contactinfo.first
    assert_redirected_to contactinfo_url(assigns(:contactinfo))
  end

  def test_destroy
    contactinfo = Contactinfo.first
    delete :destroy, :id => contactinfo
    assert_redirected_to contactinfos_url
    assert !Contactinfo.exists?(contactinfo.id)
  end
end
