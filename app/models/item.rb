class Item < ActiveRecord::Base

  belongs_to :channel

def self.search(search)
  if search
  where("title LIKE ?", "%#{search}%")
  end
end

def self.display_all
  find_by_sql("select * from items")
end

end
