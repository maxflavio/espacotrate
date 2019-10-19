class DepoimentosController < ApplicationController

	before_action :authenticate_user!

	def show
    	@depoimento = Depoimento.find(params[:id])
  end

	def new
	end

	def create
		@depoimento = Depoimento.new(depoimento_params)
		@depoimento.save
		redirect_to @depoimento		
	end

	def index
		@depoimentos = Depoimento.all
	end

	private
	  def depoimento_params
	    params.require(:depoimento).permit(:texto, :nome_pessoa)
	  end	


end
