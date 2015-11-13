class TreksController < ApplicationController
     def index
          @treks = Trek.all
     end

     def show
          @trek = Trek.find(params[:id])
     end
end
