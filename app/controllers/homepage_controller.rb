class HomepageController < ApplicationController
  def index
  end

  def resume
  	send_file 'public/henry_van_wagenberg_cv.pdf', type: "application/pdf", :disposition => 'inline'
  end
end
