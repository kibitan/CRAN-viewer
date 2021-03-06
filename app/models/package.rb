# == Schema Information
#
# Table name: packages
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  version    :string           not null
#  raw_data   :json             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_packages_on_name              (name)
#  index_packages_on_name_and_version  (name,version) UNIQUE
#

class Package < ApplicationRecord
  with_options presence: true do |required_column|
    required_column.validates :name
    required_column.validates :version
    required_column.validates :raw_data
  end

  # NOTE: validates_uniqueness_of is slow for validating, it will make SQL.
  validates_uniqueness_of :name, scope: :version

  has_one :description
end
