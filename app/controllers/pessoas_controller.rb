class PessoasController < ApplicationController

  def show
    @pessoa = Pessoa.find(params[:id])
  end

  def new
  end

  def create
    @pessoa = Pessoa.new(rele_params)
    @pessoa.save
    redirect_to @pessoa
  end

  def index
    @pessoas = Pessoa.all
  end

  private
    def rele_params
      params.require(:pessoa).permit(:nome, :nome_profissao, :foto)
    end


end
