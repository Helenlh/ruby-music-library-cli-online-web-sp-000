class Artist 
  
  
  def initialize(name)
    @@all = [] 
  end 
  
  def name
    @name
  end 
  
  
  def name=(name)
    @name = name 
  end
  
  
  def self.all 
    @@all << self 
  end 
  
  
  def self.destroy.all 
    @@all = []
  end 
  
  
  def save 
    @@all << self 
  end 
end 