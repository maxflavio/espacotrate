class ArtigosController < ApplicationController

	def show
    	@artigo = Artigo.find(params[:id])
  	end

	def new
	end

	def create
		@artigo = Artigo.new(artigo_params)
		@artigo.save
		redirect_to @artigo		
	end

	def index
		@artigos = Artigo.all
	end

	private
	  def artigo_params
	    params.require(:artigo).permit(:titulo, :texto, :foto)
	  end	

end
