module Drupal
  class NodeType
  	eval Drupal.common
    storage_names[:drupal] = 'node_type'

    property :type, String
    property :description, Text
    property :name, String

  end 
end   