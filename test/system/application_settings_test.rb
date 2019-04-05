require "application_system_test_case"

class ApplicationSettingsTest < ApplicationSystemTestCase
  setup do
    @application_setting = application_settings(:one)
  end

  test "visiting the index" do
    visit application_settings_url
    assert_selector "h1", text: "Application Settings"
  end

  test "creating a Application setting" do
    visit application_settings_url
    click_on "New Application Setting"

    fill_in "Setup", with: @application_setting.setup
    click_on "Create Application setting"

    assert_text "Application setting was successfully created"
    click_on "Back"
  end

  test "updating a Application setting" do
    visit application_settings_url
    click_on "Edit", match: :first

    fill_in "Setup", with: @application_setting.setup
    click_on "Update Application setting"

    assert_text "Application setting was successfully updated"
    click_on "Back"
  end

  test "destroying a Application setting" do
    visit application_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Application setting was successfully destroyed"
  end
end
