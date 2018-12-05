# frozen_string_literal: true

class PortfoliosController < ApplicationController
  def index
    @contact = Contact.new
  end
end
