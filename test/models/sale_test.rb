# frozen_string_literal: true

require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  test 'calculating total income' do
    assert_equal 28.5, Sale.gross_income
    sale = Sale.new({
        purchaser: 'Neymar Jr',
        description: '3 socks for R$10',
        price: 10.0,
        count: 2,
        address: 'Rua dos Afonsos, 32 - Capibaribi-ES' ,
        merchant: 'Só meia e cueca'
    })
    sale.save!
    assert_equal 48.5, Sale.gross_income
  end

  test 'last upload sales income' do
    assert_equal 28.5, Sale.last_upload
    sale = Sale.new({
        purchaser: 'Neymar Jr',
        description: '3 socks for R$10',
        price: 10.0,
        count: 2,
        address: 'Rua dos Afonsos, 32 - Capibaribi-ES' ,
        merchant: 'Só meia e cueca'
    })
    sale.save!
    assert_equal 20, Sale.last_upload
  end
end
