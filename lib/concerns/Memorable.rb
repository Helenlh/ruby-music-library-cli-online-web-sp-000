module Concerns::Memorable

 def initialize
    self.class.all << self   
  end
end 

module Memorable::InstanceMethods
def save 
    @@all << self
  end 
end