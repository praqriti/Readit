class Item < ActiveRecord::Base

  belongs_to :channel

def self.search(search)
  if search
  where("title LIKE ?", "%#{search}%")
  else
  find_by_sql("select * from items")
  end
end

end
