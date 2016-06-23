class Novel < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :genres

   def self.search(search_term)
      where("title LIKE ? OR plot LIKE ?",
        "%#{search_term}%", "%#{search_term}%")
    end
end
