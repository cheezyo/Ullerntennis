module ApplicationHelper
  def humanDate(month)
    case month
    when 1
      return "Januar"
    when 2
      return "Februar"
    when 3
      return "Mars"
    when 4
      return "April"
    when 5
      return "Mai"
    when 6
      return "Juni"
    when 7
      return "Juli"
    when 8
      return "August"
    when 9 
      return "September"
    when 10 
      return "Oktober"
    when 11
      return "November"
    when 12
      return "Desember"
  
    end
    
    
  end
  
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end
  
end
