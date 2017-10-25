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

require 'rails_helper'

RSpec.describe Package, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
