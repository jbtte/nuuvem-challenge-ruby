class SalesController < ApplicationController
  def index
  end

  def create
    @uploaded_file = params[:file].tempfile
    File.open(@uploaded_file) do |file|
      file.each do |line|
        puts(line)
      end
    end

    
    redirect_to root_path
  end
end
