class WellcomeController < ApplicationController
  def index
  	@depoimentos = Depoimento.all
  	@artigos = Artigo.all
    @pessoas = Pessoa.all
  end
end
