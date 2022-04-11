class HomeController < ApplicationController

	def delete_more	
		@delete_more = List.where(:completed => true).destroy_all
		redirect_to lists_url(@list), notice: "All selected items were successfully deleted."
	end

	def delete_all
	@delete_all = List.all.destroy_all
	redirect_to lists_url(@list), notice: "All items were successfully deleted."


end
end
