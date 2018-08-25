module Api
  class NamesController < ApplicationController
   
    def index
      @name = Name.choose_name("tutomu".downcase, Date.new(1986,03,05), "male")
      render json: @name
    end
  end
end