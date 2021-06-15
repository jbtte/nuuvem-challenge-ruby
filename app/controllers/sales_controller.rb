class SalesController < ApplicationController
  def index
    @gross_income = Sale.sum('price * count')

    last_date = Sale.last.created_at
    last_update = Sale.where("created_at > ?", last_date - 1.minute)
    @last_gross_income = last_update.sum('price * count')
  end

  def create
    @uploaded_file = params[:file].tempfile
    ## Prevent upload of different type of file
    unless @uploaded_file.path.match?(/.tab$/)
      return redirect_to root_path, alert: 'Incompatible file extension' 
    end

    ## Normalize and save info in db
    normalized_info.each do |line|
      @entry = Sale.new(line)
      redirect_to :root_path, notice: 'Incompatible information on file' unless @entry.save!
    end
    redirect_to root_path
  end

  private

  def normalized_info
    open_file = File.read(@uploaded_file).split("\n")[1..]

    headers = ['purchaser', 'description', 'price', 'count', 'address', 'merchant']

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