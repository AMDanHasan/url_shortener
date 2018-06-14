class WebsitesController < ApplicationController
  def index
    @websites = Website.all
  end

  def new
  end

  def show
    @websites = Website.find params[:id]
    redirect_to @websites.url
  end

  def create

    @website = Website.new(params.require(:website).permit(:url))

    @website = Website.new(website_params)

    @website.save
    redirect_to :root
  end

  private
  def website_params
    params.require(:website).permit(:url)
  end
end
