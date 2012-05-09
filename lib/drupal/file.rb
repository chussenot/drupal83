module Drupal
  class File
  	eval Drupal.common
    storage_names[:drupal] = 'files'

    property :fid, Serial
    property :uid, Integer

    property :filename, String
    property :filepath, String
    property :filemime, String

  end 
end   