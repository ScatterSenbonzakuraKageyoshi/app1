module API
	module v1
		class Items < Grape::API
			version 'v1'
			format:json

			resource :items do
				#index endpoint to get all items
				desc "Return list of all Items"
				get do
					Item.all
				end

				#show endpoint to a specific Item
				desc "Return a specific Item"
				get ':id' do
					Item.find_by_id(params[:id])
				end
			end
		end
	end
end