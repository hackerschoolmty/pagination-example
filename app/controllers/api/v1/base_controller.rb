class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :check_format

  def check_format
    render :nothing => true, :status => 406 unless params[:format] == 'json' || request.headers["Accept"] =~ /json/
  end
end
