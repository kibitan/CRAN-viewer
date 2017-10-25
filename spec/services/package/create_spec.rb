require 'rails_helper'

RSpec.describe Package::CreateService do
  describe ".call" do
    subject do
      Package::CreateService.call(
        name: name,
        version: version,
        raw_data: raw_data
      )
    end

    context 'when argument is valid' do
      let(:name) { 'sample' }
      let(:version) { '1.0.0' }
      let(:raw_data) { '1.0.0' }

      it { is_expected.to be_truthy }
      it('package record created') do
        expect{ subject }.to change(Package, :count).by(1)
        # TODO: check value of record
      end

      context 'when name/version is already exits' do
        pending 'not implemented yet'
      end
    end

    context 'when argument is invalid' do
      pending 'not implemented yet'
    end
  end
end
