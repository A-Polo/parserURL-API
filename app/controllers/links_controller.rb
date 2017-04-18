class LinksController < ApplicationController
  include ActionController::MimeResponds

  def linkpreview
    @url = params[:url]
    preview = LinkPreviewParser.parse(@url)

    render :json => preview
  end
end