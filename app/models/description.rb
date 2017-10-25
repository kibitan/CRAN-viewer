# == Schema Information
#
# Table name: descriptions
#
#  id               :integer          not null, primary key
#  package_id       :integer          not null
#  package_url      :string           not null
#  date_publication :datetime         not null
#  title            :string           not null
#  description      :text             not null
#  raw_data         :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_descriptions_on_package_id   (package_id)
#  index_descriptions_on_package_url  (package_url) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (package_id => packages.id)
#

class Description < ApplicationRecord
  with_options presence: true do |required_column|
    required_column.validates :package_id, uniqueness: true
    required_column.validates :package_url, uniqueness: true
    required_column.validates :date_publication
    required_column.validates :title
    required_column.validates :description
    required_column.validates :raw_data
  end
  belongs_to :package
end
