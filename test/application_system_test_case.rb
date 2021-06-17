# frozen_string_literal: true

require 'test_helper'

Webdrivers::Chromedriver.update

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :headless_chrome
end
