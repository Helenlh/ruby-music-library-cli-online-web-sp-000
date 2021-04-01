module Concerns::Findable
  
  
 def self.find_or_create_by_name(item)
    self.find(item) ? self.find(item) : self.new(item) 
    end
  end

