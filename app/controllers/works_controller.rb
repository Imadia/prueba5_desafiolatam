class WorksController < ApplicationController
  def index
  	@item = Item.all
	  	if params[:delete].present?
	  		@i = params[:delete]
	  	end

	  	if Item.find_by(serial: @i).present?
	  			b = Item.find_by(serial: @i)
	  			b.destroy
	  			redirect_to works_index_path, notice: "El producto #{params[:delete]} ha sido eliminado"
		end
					 

	end

end
