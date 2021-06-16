require 'application_system_test_case'

class SalesTest < ApplicationSystemTestCase
  test 'index headers' do
    visit root_path
    assert_selector 'h1', text: 'Company Sales'
    assert_selector 'h5', text: 'Total Gross income: $ 28.5'
    assert_selector 'h5', text: 'Last upload file gross income: $ 28.5'
  end

  
end
