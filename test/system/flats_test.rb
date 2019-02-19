require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting flats home" do
    visit '/'
    # visit flats_url

    assert_selector "h1", text: "Flats"
  end

  test "showing flat 211" do
    visit '/flats/211'
    # visit flats_url

    assert_selector "h1", text: "Bohemian and Chic in Paris"
  end

end
