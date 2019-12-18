class Order < ApplicationRecord
    belongs_to :user
    has_many :products, through :order_details
    enum status: [:paid, :stand_by, :canceled]
end
