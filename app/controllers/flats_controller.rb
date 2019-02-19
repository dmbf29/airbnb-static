require 'open-uri'


class FlatsController < ApplicationController
  before_action :fetch_flats, only: [:index, :show]

  def index
  end

  def show
    @flat = @flats.find do |flat|
      flat['id'] == params[:id].to_i
    end
  end

  private

  def fetch_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

end
