class FurnitureCell < Cell::Rails

  def index
    @allproducts = Product.allprods.paginate :page => params[:page], :per_page => Product.per_page
    render
  end

end
