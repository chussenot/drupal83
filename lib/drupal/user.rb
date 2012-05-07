module Drupal
  class User
    eval Drupal.common
    storage_names[:drupal] = 'users'

    property :uid, Serial
    
    property :name, String,
      :length => 60,
      :required => true
    
    property :mail, String,
      :length => 64

    property :pass, String  
    
    has n, :nodes, 
      :child_key => [:uid],
      :repository => Drupal::Repository
    
    def profile
      Drupal::Node.first :type => 'profile', :uid => uid
    end

    property :created, Date 
    def created_at ; Time.at(self[:created]) ; end
  end
end
