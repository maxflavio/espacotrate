class WellcomeController < ApplicationController
  def index
  	@depoimentos = Depoimento.all
  	@artigos = Artigo.all
  end
end
