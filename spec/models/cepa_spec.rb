require 'rails_helper'

RSpec.describe Cepa, type: :model do
  subject {
    Cepa.create(name: 'cepa1')
  }
  it 'is not valid without name' do

    subject.name = nil

    expect(subject).to_not be_valid
    
  end
end
