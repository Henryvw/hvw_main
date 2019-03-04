class HomepageController < ApplicationController
  def index
  end

  def pdf
  	send_file 'public/henry_van_wagenberg_cv.pdf', type: "application/pdf", :disposition => 'inline', stream: true
  end
end
