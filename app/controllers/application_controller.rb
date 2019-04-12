class ApplicationController < ActionController::Base
  before_action :init

  def init
    @state = {}
  end
end
