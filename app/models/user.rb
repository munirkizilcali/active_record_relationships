class User < ActiveRecord::Base
  has_many :checkouts
  has_many :books, through: :checkouts

  def checkout_book(book)
    cb = Checkout.new(book: book, user: self)
    cb.returned = false
    cb.due = 2.week.from_now
    cb.save
    cb
  end

  def checked_out_books
    Checkout.all.where(user: self).where(returned: false)
  end

  def overdue_books
    Checkout.overdue_books.where(user: self).map { |c| c.book }
  end
end