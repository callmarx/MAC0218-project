class HomeController < ApplicationController

  def index
    file = File.open(Dir.glob("#{Rails.root}/README.md").first)
    @content = file.read
  end

  def license
    file = File.open(Dir.glob("#{Rails.root}/LICENSE.md").first)
    @content = file.read
    render 'home/index'
  end
end
