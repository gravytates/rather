class HomeController < ApplicationController
  skip_before_action only: [:show]
end
