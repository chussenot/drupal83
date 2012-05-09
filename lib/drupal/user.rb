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

    has n, :comments, 
      :child_key => [:uid],
      :repository => Drupal::Repository  

    has n, :user_roles, 
      :child_key => [:uid],
      :repository => Drupal::Repository
      
    has n, :roles, :through => :user_roles  
    
    def profile
      Drupal::Node.first :type => 'profile', :uid => uid
    end

    #property :created, Date 
    #def created_at ; Time.at(self[:created]) ; end
  end

  class UserRole
    eval Drupal.common
    storage_names[:drupal] = 'users_roles'

    property :rid, Integer
    property :uid, Integer

    belongs_to :role, 
      :child_key => [:rid],
      :repository => Drupal::Repository  

    belongs_to :user, 
      :child_key => [:uid],
      :repository => Drupal::Repository  
  end
end
