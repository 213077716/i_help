class ProductsController < ApplicationController

	def index
		list
		render('list')
	end
	def list
		@products = Product.order("products.id ASC")
	end
	
	def show
		@product = Product.find(params[:id])
	end
	
	def new
		#we can leave it blank or instantiate an object product
		@product = Product.new
	end
	
	def create
		# Instantiate a new object using form parameters
		@product = Product.new(params[:product])
		# Save the object
		if @product.save
		# If save succeeds, redirect to the list action
		redirect_to(:action => 'list')
		else
		# If save fails, redisplay the form so user can fix problems
		render('new')
		end
	end
	
	def edit
		@product = Product.find(params[:id])
	end
	
	def create
		# Find a new object using form parameters
		@product = Products.find(params[:id])
		
		# Update the object
		if @product.update_attributes(params[:product])
		# If save succeeds, redirect to the list action
		redirect_to(:action => 'show', :id => @product.id)
		else
		# If save fails, redisplay the form so user can fix problems
		render('edit')
		end
	end	
end
