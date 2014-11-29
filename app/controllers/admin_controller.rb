# encoding: utf-8

class AdminController < ApplicationController

	def prices
		@title = "Цены и тарифы"

		@pages = initialize_grid(Page, :conditions => ['category_id = ?', 1],
                  order: 'name',
                  order_direction: 'desc',
                  per_page: 20)

		render :template => "/admin/pages"
	end

	def teplo
		@title = "Регулируемая деятельность в сфере теплоснабжения"

		@pages = initialize_grid(Page, :conditions => ['category_id = ?', 2],
                  order: 'name',
                  order_direction: 'desc',
                  per_page: 20)

		render :template => "/admin/pages"
	end

	def gvs
		@title = "Регулируемая деятельность в сфере горячего водоснабжения"

		@pages = initialize_grid(Page, :conditions => ['category_id = ?', 3],
                  order: 'name',
                  order_direction: 'desc',
                  per_page: 20)

		render :template => "/admin/pages"
	end

	def blanks
		@title = "Бланки договоров и контрактов"

		@pages = initialize_grid(Page, :conditions => ['category_id = ?', 4],
                  order: 'created_at',
                  order_direction: 'desc',
                  per_page: 20)

		render :template => "/admin/pages"
	end

	def polozhenie
		@title = "Положение о закупках"

		@pages = initialize_grid(Page, :conditions => ['category_id = ?', 1],
                  order: 'created_at',
                  order_direction: 'desc',
                  per_page: 20)

		render :template => "/admin/pages"
	end

	def plan
		@title = "План закупок"

		@pages = initialize_grid(Page, :conditions => ['category_id = ?', 2],
                  order: 'created_at',
                  order_direction: 'desc',
                  per_page: 20)

		render :template => "/admin/pages"
	end

	def today
		@title = "Текущие закупки"

		@pages = initialize_grid(Page, :conditions => ['category_id = ?', 1],
                  order: 'created_at',
                  order_direction: 'desc',
                  per_page: 20)

		render :template => "/admin/pages"
	end

	def podklucheniya
		@title = "Возможности подключения"

		@pages = initialize_grid(Page, :conditions => ['category_id = ?', 5],
                  order: 'name',
                  order_direction: 'desc',
                  per_page: 20)

		render :template => "/admin/pages"
	end

	def arhive
		@title = "Архив закупок"

		@pages = initialize_grid(Page, :conditions => ['category_id = ?', 2],
                  order: 'created_at',
                  order_direction: 'desc',
                  per_page: 20)

		render :template => "/admin/pages"
	end

	def dogovora
		@title = "Заключённые договора"

		@pages = initialize_grid(Page, :conditions => ['category_id = ?', 2],
                  order: 'created_at',
                  order_direction: 'desc',
                  per_page: 20)

		render :template => "/admin/pages"
	end	
end
