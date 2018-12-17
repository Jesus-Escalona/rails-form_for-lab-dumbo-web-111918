class SchoolClassesController < ApplicationController

	def edit
		@school_class = SchoolClass.find(params[:id])
	end

	def new

	end

	def create
		@school_class = SchoolClass.create(school_class_params(:title, :room_number))
		redirect_to @school_class
	end

	def show
		@school_class = SchoolClass.find(params[:id])
	end

	def update
		@school_class = SchoolClass.find(params[:id])
		@school_class.update(school_class_params(:title, :room_number))
		redirect_to @school_class
	end

	private
		def school_class_params(*args)
			params.require(:school_class).permit(*args)
		end
end