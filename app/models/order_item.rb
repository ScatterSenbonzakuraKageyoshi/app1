# == Schema Information
#
# Table name: order_items
#
#  id         :bigint(8)        not null, primary key
#  item_id    :integer
#  order_id   :integer
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class OrderItem < ApplicationRecord

belongs_to :order
belongs_to :item


end
