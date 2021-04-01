module Memorable::ClassMethods 

 def initialize
    self.class.all << self   
  end
end 

module InstanceMethods
def save 
    @@all << self
  end 
end