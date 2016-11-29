class Transaction < ApplicationRecord
  belongs_to :seller, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  belongs_to :physical_book, optional: true
end
