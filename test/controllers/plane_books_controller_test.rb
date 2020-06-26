require 'test_helper'

class PlaneBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plane_book = plane_books(:one)
  end

  test "should get index" do
    get plane_books_url
    assert_response :success
  end

  test "should get new" do
    get new_plane_book_url
    assert_response :success
  end

  test "should create plane_book" do
    assert_difference('PlaneBook.count') do
      post plane_books_url, params: { plane_book: { pass_email: @plane_book.pass_email, pass_name: @plane_book.pass_name } }
    end

    assert_redirected_to plane_book_url(PlaneBook.last)
  end

  test "should show plane_book" do
    get plane_book_url(@plane_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_plane_book_url(@plane_book)
    assert_response :success
  end

  test "should update plane_book" do
    patch plane_book_url(@plane_book), params: { plane_book: { pass_email: @plane_book.pass_email, pass_name: @plane_book.pass_name } }
    assert_redirected_to plane_book_url(@plane_book)
  end

  test "should destroy plane_book" do
    assert_difference('PlaneBook.count', -1) do
      delete plane_book_url(@plane_book)
    end

    assert_redirected_to plane_books_url
  end
end
