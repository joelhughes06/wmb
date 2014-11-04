class BikesController<ApplicationController
	before_action :lat_lng


# http://stackoverflow.com/questions/9758416/storing-html5-geolocation-data
	def lat_lng
  	@lat_lng = cookies[:lat_lng].split("|")
    @lat_lng = @lat_lng.to_s.gsub(/[\[\]" ]/, '')
	end

	def new
#		@bike = Bike.new
		@ip = request.remote_ip
    @lat_lng
	end

	def create
		@bike = Bike.new(params.require(:bike).permit(:serial_number, :brand, :model, :style, :color, :size_letter, :size_centimeters, :size_inches, :year, :store_name, :store_address, :store_zip, :store_state, :zip, :state, :city, :date, :description, :submitter, :lost, :new_purchase, :used_purchase, :submitter_ip, :search_tally, :submitter_latitude, :submitter_longitude, :inquiry_reason, :lat_long))
		@ip = request.remote_ip	
    @lat_lng
		if @bike.save 
#			flash[:notice] = "One moment please..."
			redirect_to bike_path(@bike)
		else
			render 'register'
		end
	end

	def edit
		@bike = Bike.find(params[:id])
	end

	def update

		@bike = Bike.find(params[:id])
		if @bike.update(params.require(:bike).permit(:serial_number, :brand, :model, :style, :color, :size_letter, :size_centimeters, :size_inches, :year, :store_name, :store_address, :store_zip, :store_state, :zip, :state, :city, :date, :description, :submitter, :lost, :new_purchase, :used_purchase, :submitter_ip, :search_tally, :submitter_latitude, :submitter_longitude, :inquiry_reason, :lat_long))
			redirect_to bike_path(@bike)
		else
			render :edit
		end

	end

	def index
	  if params[:search]
    	@bikes = Bike.search(params[:search]).order("created_at DESC")
  	else
      redirect_to root_path  	  
      flash[:error] = "We're sorry, your search did not match any of our records."
	  end	

# this should be viewable only by admin:
#      @bikes = Bike.all.order('created_at DESC')
#		@bikes = Bike.search(params[:search])
	end

	def show
    @lat_lng    
		@bike = Bike.find(params[:id])
	  if params[:search]
    	@bikes = Bike.search(params[:search]).order("created_at DESC")
# this should be viewable only by admin:
  	else
  	  @bikes = Bike.all.order('created_at DESC')
	  end			
	end

end 