module Drupal
  class Role
  	eval Drupal.common
    storage_names[:drupal] = 'role'
    
    property :rid, Serial
    property :name, String

    has n, :user_roles, 
      :child_key => [:rid],
      :repository => Drupal::Repository

    has n, :users, :through => :user_roles  
    
  end 
end   