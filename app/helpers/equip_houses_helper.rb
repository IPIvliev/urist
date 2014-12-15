module EquipHousesHelper

	def temperature(t)
		if t <= 57
			"<span class='red'>#{t}</span>".html_safe
		elsif t > 57 && t < 60
			"<span class='yellow'>#{t}</span>".html_safe
		else
			"<span class='green'>#{t}</span>".html_safe
		end
	end
end