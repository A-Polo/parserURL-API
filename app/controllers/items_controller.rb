class ItemsController < BaseController
  def index
    render json: Item.all
  end
  def create
    @item = Item.create!(item_params)
    render json: @item
  end

  def item_params
    params.require(:item).permit(
        :id,
        :meta_title,
        :meta_description,
        :link_news,
        :meta_image,
        :title
    )
  end
end