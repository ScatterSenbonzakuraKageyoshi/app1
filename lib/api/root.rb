module API
	class Root < Grape::API
		prefix 'api'
		mount API::v1::Root
		#mount API::v2::Root (next version)
	end
end