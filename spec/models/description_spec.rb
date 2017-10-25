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

require 'rails_helper'

RSpec.describe Description, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
