class HomeController < ApplicationController
  layout 'application'

  def page
    @content = HomeService.fetch_content
  end
end
