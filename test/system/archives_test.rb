require "application_system_test_case"

class ArchivesTest < ApplicationSystemTestCase
  setup do
    @entry = entries(:one)
  end

  test "visiting the archives index" do
    visit archives_index_url

    assert_selector "h1", text: "Food Log"
    assert_selector "h3", text: "Entries For #{@entry.day}"
    assert text: @entry.meal_type
  end  
end
