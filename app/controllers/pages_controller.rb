class PagesController < ApplicationController 
  before_filter :authorize
def admin 
  render :layout => 'admin'
end

def articleadmin
    render :layout => 'admin'
end

def pagesadmin
  render :layout => 'admin'
end

def submenuadmin
  
  render :layout => 'admin'

end

def eventsadmin
    render :layout => 'admin'
end

def albumadmin
  render :layout => 'admin'
end

end