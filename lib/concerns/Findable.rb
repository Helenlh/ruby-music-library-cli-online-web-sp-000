module Concerns::Findable
  
  
  def find_or_create_by_name(name) 
    find_by_name(name)||create_by_name(name).uniq
    name  
  end
end

