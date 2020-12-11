class AssociatesController < ApplicationController
  def index
    @associates = Associate.all

    # the `geocoded` scope filters only associates with coordinates (latitude & longitude)
    @markers = @associates.geocoded.map do |associate|
      {
        lat: associate.latitude,
        lng: associate.longitude,
        image_url: helpers.asset_url('loop_favicon_32x32.png')
      }
    end
  end
end
