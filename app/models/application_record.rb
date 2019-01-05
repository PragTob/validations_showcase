class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  before_validation
end
