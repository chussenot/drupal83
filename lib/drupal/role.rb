module Drupal
  class Role
  	eval Drupal.common
    storage_names[:drupal] = 'role'
    
    property :rid, Serial
    property :name, String
  end 
end   