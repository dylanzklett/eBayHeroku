class CardsController < ApplicationController
	def new
		@card = Card.new
		@status = {Wanted: 0, Offered: 1}
	end

	def create
		@card = Card.create(card_params)
		@card.user_id = current_user.id
		# if @card.status = "Wanted"
		# 	@card.status = 
		if @card.save
			flash[:notice] = "Card successfully listed."
			redirect_to user_path(current_user)
		else
			flash[:notice] = "There was an error listing your card."
			render "new"
		end
	end

	def edit
		@card = Card.find(params[:id])
	end

	def update

	end


	def destroy
		@card = Card.find(params[:id])
		if @card
			@card.destroy
			flash[:notice] = "Card listing removed."
			redirect_to user_path(current_user)
		else
			flash[:notice] = "There was an error. Try again."
			redirect_to user_path(current_user)
		end
	end



	private
	def card_params
		params.require(:card).permit(:name, :set, :price, :status, :user_id, :foil, :notes)
	end
end
