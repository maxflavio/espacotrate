class WellcomeController < ApplicationController
  def index
  	@depoimentos = Depoimento.all
  	@artigos = Artigo.all
    @pessoas = Pessoa.all
    @servicos = Servico.all

    @newsletter = Newsletter.new

    @instagram = GlobalConstants::CONF['instagram']
    @youtube   = GlobalConstants::CONF['youtube']
    @facebook   = GlobalConstants::CONF['facebook']
    @telefone  = GlobalConstants::CONF['telefone']
    @email  = GlobalConstants::CONF['email']
    @endereco_clinica  = GlobalConstants::CONF['endereco_clinica']


  end
end
