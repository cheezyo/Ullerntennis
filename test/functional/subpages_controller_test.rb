require 'test_helper'

class SubpagesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Subpage.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Subpage.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Subpage.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to subpage_url(assigns(:subpage))
  end

  def test_edit
    get :edit, :id => Subpage.first
    assert_template 'edit'
  end

  def test_update_invalid
    Subpage.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Subpage.first
    assert_template 'edit'
  end

  def test_update_valid
    Subpage.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Subpage.first
    assert_redirected_to subpage_url(assigns(:subpage))
  end

  def test_destroy
    subpage = Subpage.first
    delete :destroy, :id => subpage
    assert_redirected_to subpages_url
    assert !Subpage.exists?(subpage.id)
  end
end
