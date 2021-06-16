require "test_helper"

class SalesControllerTest < ActionDispatch::IntegrationTest

  test 'file uploading and included in db' do
    assert_equal 2, Sale.all.count
    file = fixture_file_upload('/test_input.tab')
    post sales_path, params: { file: file }
    assert_equal 302, status
    assert_equal sales_path, path
    assert_equal 6, Sale.all.count
  end

  test 'Total Income correctly calculated' do
    assert_equal 28.5, Sale.sum('price * count')
    file = fixture_file_upload('/test_input.tab')
    post sales_path, params: { file: file }
    assert_equal 123.5, Sale.sum('price * count')
  end

  test 'Show error message if file is not selected' do
  post sales_path, params: {}
  assert_equal 302, status
  assert_equal "Please select a file", flash[:alert] 
  end

  test 'Show error message if wrong type of file' do
    file = fixture_file_upload('/csv_input.csv')
    post sales_path, params: { file: file }
    assert_equal 302, status
    assert_equal "Incompatible file extension", flash[:alert] 
  end

end
