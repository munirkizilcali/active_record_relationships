class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
  has_many :checkouts
  has_many :users, through: :checkouts

  def add_category(category)
    self.category = category
    self.save
    category.reload
  end

  def add_category_by_name(category_name)
    self.category = Category.find_or_create_by(:name => category_name)
  end

end