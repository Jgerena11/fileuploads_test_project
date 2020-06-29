require 'test_helper'

class MovieAlbumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_album = movie_albums(:one)
  end

  test "should get index" do
    get movie_albums_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_album_url
    assert_response :success
  end

  test "should create movie_album" do
    assert_difference('MovieAlbum.count') do
      post movie_albums_url, params: { movie_album: {  } }
    end

    assert_redirected_to movie_album_url(MovieAlbum.last)
  end

  test "should show movie_album" do
    get movie_album_url(@movie_album)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_album_url(@movie_album)
    assert_response :success
  end

  test "should update movie_album" do
    patch movie_album_url(@movie_album), params: { movie_album: {  } }
    assert_redirected_to movie_album_url(@movie_album)
  end

  test "should destroy movie_album" do
    assert_difference('MovieAlbum.count', -1) do
      delete movie_album_url(@movie_album)
    end

    assert_redirected_to movie_albums_url
  end
end
