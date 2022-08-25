module Fera
  class AuthController < ApplicationController
    include Fera::Apps::Controllers::Base
    include Fera::Apps::Controllers::Auth
  end
end
