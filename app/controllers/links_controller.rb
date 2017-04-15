class LinksController < ApplicationController
  def linkpreview
    @url = 'https://lenta.ru/'
    preview = LinkPreviewParser.parse(@url)

    render :json => preview
  end
end