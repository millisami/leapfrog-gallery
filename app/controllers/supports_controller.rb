class SupportsController < ApplicationController

  def new
    @support = Support.new
  end

  def create
    SupportMailer.notify(params[:support]).deliver
    redirect_to root_url, notice: 'We will contact you asap.'
  end
end