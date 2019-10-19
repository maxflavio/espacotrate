class NewslettersController < ApplicationController

  def show
    @newsletter = Newsletter.find(params[:id])
  end

  def new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    @newsletter.save
    redirect_to @root_path
  end

  def index
    @newsletters = Newsletter.all
  end

  private
  def newsletter_params
    params.require(:@newsletter).permit(:email)
  end

end
