require 'test_helper'

class PartOfCatalogsControllerTest < ActionController::TestCase
  setup do
    @part_of_catalog = part_of_catalogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:part_of_catalogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create part_of_catalog" do
    assert_difference('PartOfCatalog.count') do
      post :create, part_of_catalog: { description: @part_of_catalog.description, title: @part_of_catalog.title }
    end

    assert_redirected_to part_of_catalog_path(assigns(:part_of_catalog))
  end

  test "should show part_of_catalog" do
    get :show, id: @part_of_catalog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @part_of_catalog
    assert_response :success
  end

  test "should update part_of_catalog" do
    patch :update, id: @part_of_catalog, part_of_catalog: { description: @part_of_catalog.description, title: @part_of_catalog.title }
    assert_redirected_to part_of_catalog_path(assigns(:part_of_catalog))
  end

  test "should destroy part_of_catalog" do
    assert_difference('PartOfCatalog.count', -1) do
      delete :destroy, id: @part_of_catalog
    end

    assert_redirected_to part_of_catalogs_path
  end
end
