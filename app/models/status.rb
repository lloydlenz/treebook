class Status < ActiveRecord::Base
 	belongs_to 		:user

 # Never trust parameters from the scary internet, only allow the white list through.
	
	def create
		Status.create(params[:user_id, :content])
	end
    def user_params
      params.require(:user_id, :profile_name, :email, :first_name, :last_name)
     end

	def status_params
      params.require(:user_id, :content)
    end

end
