class ServicosController < ApplicationController

  before_action :authenticate_user!

  def show
    @servico = Servico.find(params[:id])
  end

  def new
  end

  def create
    @servico = Servico.new(servico_params)
    @servico.save
    redirect_to @servico
  end

  def index
    @servicos = Servico.all
  end

  private
  def servico_params
    params.require(:servico).permit(:titulo, :descricao, :foto)
  end

end
