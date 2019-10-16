class RelesController < ApplicationController

	def show
    	@rele = Rele.find(params[:id])
  	end

	def new
	end

	def create
		@rele = Rele.new(rele_params)
		@rele.save
		redirect_to @rele		
	end

	def index
		@reles = Rele.all
	end

	private
	  def rele_params
	    params.require(:rele).permit(:id_rele, :nome)
	  end	


end