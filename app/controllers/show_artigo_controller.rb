class ShowArtigoController < ApplicationController

  def index
    @instagram = GlobalConstants::CONF['instagram']
    @youtube   = GlobalConstants::CONF['youtube']
    @facebook   = GlobalConstants::CONF['facebook']
    @telefone  = GlobalConstants::CONF['telefone']
    @email  = GlobalConstants::CONF['email']
    @endereco_clinica  = GlobalConstants::CONF['endereco_clinica']
    @artigo = Artigo.find(params[:id])
  end

  private
  def artigo_params
    params.require(:artigo).permit(:id)
  end


end
