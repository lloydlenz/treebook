module ApplicationHelper
	def flash_class(type)
		case type
		when :alert
			"danger"
		when :notice
			"success"
		else
			""
		end
	end
end
