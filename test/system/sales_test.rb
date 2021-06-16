require 'application_system_test_case'

class SalesTest < ApplicationSystemTestCase
  test 'index headers' do
    visit root_path
    assert_selector 'h1', text: 'Company Sales'
    assert_selector 'h5', text: 'Total Gross income: $ 28.5'
    assert_selector 'h5', text: 'Last upload file gross income: $ 28.5'
  end

  test 'index buttons' do
    visit root_path
    assert_selector 'input[type=submit]', count:1
    assert_selector 'input[type=file]', count:1
  end
end
