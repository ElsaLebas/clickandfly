class PlanesController < ApplicationController
    def index # all
        @planes = policy_scope(Plane).order(created_at: :desc)
    end

    def show # 1
        @plane = Plane.find(params[:id])
        authorize @plane
    end

    def new 
        @plane = Plane.new # needed to instantiate the form  
        authorize @plane    
    end
    
    def edit
        authorize @plane
    end

    def create
        @plane = Plane.new(plane_params)
        @plane.user = current_user
        authorize @plane
        
        if @plane.save
            redirect_to plane_path(@plane)    , notice:"Plane was successfully created"       
        else
            render :new
        end
    end
  
    def update # edit + update
        authorize @plane
    end

    def destroy # delete
        authorize @plane
    end

    private
  
    def plane_params
      params.require(:plane).permit(:plane_name, :plane_type, :capacity, :location, :price, :user_id)
    end
end
