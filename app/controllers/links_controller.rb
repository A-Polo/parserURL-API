class LinksController < ApplicationController
  def linkpreview
    @url = params[:url]
    preview = LinkPreviewParser.parse(@url)

    render :json => preview
  end
end