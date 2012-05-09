module Drupal
  class Comment
  	eval Drupal.common
    storage_names[:drupal] = 'comments'

    property :cid, Serial
    property :pid, Integer
    property :nid, Integer
    property :uid, Integer
    property :type, String
    property :subject, String
    property :comment, Text
    property :hostname, String

    #
    property :thread, String
    property :name, String
    property :mail, String
    property :homepage, String

  end
end  	