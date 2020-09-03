class PropertiesController < ApplicationController

    def index
        @properties = Property.all
    end

    
    def show
        @property = Property.find_by_id(params[:id])
    end

    
end
