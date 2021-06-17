# frozen_string_literal: true

require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  test 'calculating total income' do
    assert_equal 28.5, Sale.gross_income
  end

  test 'last upload sales income' do
    assert_equal 28.5, Sale.last_upload
  end
end
