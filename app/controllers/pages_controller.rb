class PagesController < ApplicationController 
def admin 
  render :layout => 'admin'
end

def articleadmin
    render :layout => 'admin'
end


end