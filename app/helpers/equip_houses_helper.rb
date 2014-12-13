module EquipHousesHelper

	def temperature(t)
		if t >= 61 || t <= 57
			"<span class='red'>#{t}</span>".html_safe
		elsif t >= 58 && t < 61
			"<span class='yellow'>#{t}</span>".html_safe
		else
			"<span class='green'>#{t}</span>".html_safe
		end
	end
end
