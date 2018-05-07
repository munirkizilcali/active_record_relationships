class Checkout < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  def self.overdue_books
    self.all.where('due < ? AND returned = ?', Time.now, false)
  end
end