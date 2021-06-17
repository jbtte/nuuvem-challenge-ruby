# frozen_string_literal: true

class SalesController < ApplicationController
  def index
    @gross_income = Sale.gross_income
    @last_gross_income = Sale.last ? Sale.last_upload : 0
  end

  def create
    unless params[:file]
      redirect_to root_path, alert: 'Please select a file'
      return 0
    end

    @uploaded_file = params[:file].tempfile
    ## Prevent upload of different type of file
    return redirect_to root_path, alert: 'Incompatible file extension' unless @uploaded_file.path.match?(/.tab$/)

    ## Normalize and save info in db
    normalized_info.each do |line|
      @entry = Sale.new(line)
      redirect_to :root_path, alert: 'Incompatible information on file' unless @entry.save!
    end

    redirect_to root_path
  end

  private

  def normalized_info
    open_file = File.read(@uploaded_file).split("\n")[1..]

    headers = %w[purchaser description price count address merchant]

    open_file.map do |line|
      line_info = line.split("\t")

      ## Normalizing the data
      client = line_info[0].titlecase
      description = line_info[1]
      price = line_info[2].to_f
      count = line_info[3].to_i
      address = line_info[4]
      merchant = line_info[5].titlecase

      ## Returning a hash of normalized info
      Hash[headers.zip([client, description, price, count, address, merchant])]
    end
  end
end
