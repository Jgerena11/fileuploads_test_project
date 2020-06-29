require "application_system_test_case"

class MovieAlbumsTest < ApplicationSystemTestCase
  setup do
    @movie_album = movie_albums(:one)
  end

  test "visiting the index" do
    visit movie_albums_url
    assert_selector "h1", text: "Movie Albums"
  end

  test "creating a Movie album" do
    visit movie_albums_url
    click_on "New Movie Album"

    click_on "Create Movie album"

    assert_text "Movie album was successfully created"
    click_on "Back"
  end

  test "updating a Movie album" do
    visit movie_albums_url
    click_on "Edit", match: :first

    click_on "Update Movie album"

    assert_text "Movie album was successfully updated"
    click_on "Back"
  end

  test "destroying a Movie album" do
    visit movie_albums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movie album was successfully destroyed"
  end
end
