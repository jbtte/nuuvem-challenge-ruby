# frozen_string_literal: true

class Sale < ApplicationRecord
  def self.gross_income
    Sale.sum('price * count')
  end

  def self.last_upload
    last_date = Sale.last.created_at
    last_update = Sale.where('created_at > ?', last_date - 1.minute)
    last_update.sum('price * count')
  end
end
