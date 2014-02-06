class Task < ActiveRecord::Base
  validates_lengths_from_database
  default_scope order('created_at DESC')

end
