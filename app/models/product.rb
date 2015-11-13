class Product < ActiveRecord::Base
  has_many :images
  belongs_to :user
  has_many :order_items

  validates :name, presence: true
  validates :yardage, presence: true
  validates :fabric_type, presence: true
  validates :shipping, presence: true
  validates :price, presence: true

  default_scope { where(active: true) }



  def self.search(search)
    if search
      where(['name LIKE ?', "#{search}"])
    else
      self.all
    end
  end

  def self.fabric_search(search)
    @fabric_search_results = HTTParty.get("https://api.spoonflower.com:443/design/search?q=#{search}&sort=classic&limit=15&substrate=fabric&availability=for_sale", {format: :json})
    return @fabric_search_results["results"].first["results"]
  end
end
