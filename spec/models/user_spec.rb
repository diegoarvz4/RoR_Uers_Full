require 'rails_helper'

RSpec.describe User, type: :model do

  context 'valid user when' do
    
    it 'has a unique username' do
      username = 'usernX'
      User.create(username: username)
      user =  User.create(username: username)
      expect(user).not_to be_valid
    end
  
  end

end
