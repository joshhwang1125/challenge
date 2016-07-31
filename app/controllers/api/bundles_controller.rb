class Api::BundlesController < ApplicationController

  def index
    @bundles = Bundle.all
  end

  private

  def bundle_params
    params.require(:bundle).permit(:title, :artist, :description, :background_url, :thumbnail_url)
  end

end
