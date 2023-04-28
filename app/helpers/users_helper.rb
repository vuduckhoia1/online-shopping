module UsersHelper
	def getRole(role)
		if role == 0
			return 'Admin'
		elsif role == 1
			return 'Employee'
		else
			return 'Customer'
		end
	end
end
