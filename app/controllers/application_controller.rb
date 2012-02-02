class ApplicationController < ActionController::Base
  include Transloadit::Rails::ParamsDecoder
  protect_from_forgery
  before_filter :authenticate_user!
end
