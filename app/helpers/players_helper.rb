module PlayersHelper
  
  def getGroup(players, age, gender)
    list = Array.new
    year = Time.now.year
    
    if(gender == "Male")
      case age
          when 12
            
            Player.where(:gender => "Male").each do |p|
              if year - p.birth.year <= 12
              list.push(p)
              end
              
            end
            return list
          when 14
          Player.where(:gender => "Male").each do |p|
              if year - p.birth.year <= 14 && year - p.birth.year > 12
              list.push(p)
              end
              
            end
            return list
          when 16
          Player.where(:gender => "Male").each do |p|
              if year - p.birth.year <= 16 && year - p.birth.year > 14
              list.push(p)
              end
              
            end
            return list
          when 18
            Player.where(:gender => "Male").each do |p|
              if year - p.birth.year <= 18 && year - p.birth.year > 16
              list.push(p)
              end
              
            end
            return list
        end 
   
      else
       case age
        when 12
            
            Player.where(:gender => "Female").each do |p|
              if year - p.birth.year <= 12
              list.push(p)
              end
              
            end
            return list
          when 14
          Player.where(:gender => "Female").each do |p|
              if year - p.birth.year <= 14 && year - p.birth.year > 12
              list.push(p)
              end
              
            end
            return list
          when 16
          Player.where(:gender => "Female").each do |p|
              if year - p.birth.year <= 16 && year - p.birth.year > 14
              list.push(p)
              end
              
            end
            return list
          when 18
            Player.where(:gender => "Female").each do |p|
              if year - p.birth.year <= 18 && year - p.birth.year > 16
              list.push(p)
              end
              
            end
            return list
           end
     end 
    
    
  end
  
  
end
