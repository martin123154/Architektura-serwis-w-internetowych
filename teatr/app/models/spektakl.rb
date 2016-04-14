class Spektakl < ActiveRecord::Base
    
    def self.search(search)
 		where("tytul LIKE ? or rezyser LIKE ? or premiera LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
end
    validates :tytul, length: { in: 2..20 }
    validates :rezyser, length: { in: 2..20 }
    validates :premiera, presence: true
     
     
end


