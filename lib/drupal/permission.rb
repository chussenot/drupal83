module Drupal
  class Permission
  	eval Drupal.common
    storage_names[:drupal] = 'permission'

    property :pid, Serial
    property :rid, Integer
    property :tid, Integer
    property :perm, String
    
  end 
end   