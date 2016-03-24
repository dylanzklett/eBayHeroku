class CardsController < ApplicationController
	def new
		@card = Card.new
		@status = {Wanted: 0, Offered: 1}
	end

	def create
		@card = Card.new(card_params)
		@card.user_id = current_user.id
		# if @card.status = "Wanted"
		# 	@card.status = 
		if @card.save
			flash[:notice] = "Card successfully listed."
			redirect_to user_path(current_user)
		else
			flash[:notice] = "There was an error listing your card."
			puts @card.errors.full_messages
			render "new"
		end
	end

	def show
		@users = User.where.not(id:current_user.id)
		@card = Card.find(params[:id])
		#Step 0: All Cards except current card displayed
		@all = Card.where.not(id:params[:id]).where.not(user_id: current_user.id)
		#Step 1: find all cards with that name
		@name = @all.where(name:@card.name)
		#Step 2: take all appropriately named cards and separate out to only matching sets
		@set = @name.where(set:@card.set)
		#Step 3: separate out only those prices which match given amounts
		if @card.status == true
			@price = @set.where("price <= #{@card.price}")
		else
			@price = @set.where("price >= #{@card.price}")

		end

		@result = []

		@price.each do |c|
			c.user.userevents.each do |carduv|
				current_user.userevents.each do |u|
					if carduv == u
						@result.push(carduv)
					end
				end
			end
		end
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