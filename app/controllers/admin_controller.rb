# encoding: utf-8

class AdminController < ApplicationController

	def prices
		@pages = initialize_grid(Page, :conditions => ['category_id = ?', 1],
                  order: 'created_at',
                  order_direction: 'desc',
                  per_page: 20)

		render :template => "/admin/pages"
	end

	def teplo
		@title = "Регулируемая деятельность в сфере теплоснабжения"

		@pages = initialize_grid(Page, :conditions => ['category_id = ?', 2],
                  order: 'created_at',
                  order_direction: 'desc',
                  per_page: 20)

		render :template => "/admin/pages"
	end

end
