require 'rails/application_controller'

class HomeController < Rails::ApplicationController
  def search
    render file: Rails.root.join('public', 'search.html')
  end
end