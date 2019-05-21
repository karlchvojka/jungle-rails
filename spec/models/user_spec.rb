require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(first_name: "User First Name", last_name: "User Last Name", email: "test@test.com", password: "test", password_confirmation: "test")
  end

  describe 'Validations' do
    it "should be valid with valid parameters" do
      expect(@user).to be_valid
    end
    it "should require first name to be valid" do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end
    it "should require last name to be valid" do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
    it "should require email to be valid" do
      @user.email = nil
      expect(@user).to_not be_valid
    end
    it "should require password to be valid" do
      @user.password = nil
      expect(@user).to_not be_valid
    end
    it "should require password_confirmation to be valid" do
      @user.password_confirmation = nil
      expect(@user).to_not be_valid
    end
    it "should require unique (not case sensitive) emails to be valid" do
      @user2 = User.create(first_name: "User First Name", last_name: "User Last Name", email: "TEST@TEST.com", password: "test", password_confirmation: "test")
      expect(@user2).to_not be_valid
    end
    it "should require password length of at least 4 characters" do
      @user.password = "tes"
      @user.password_confirmation = "tes"
      expect(@user).to_not be_valid
    end
    it "Password and password_confirmation should match" do
      @user.password = "test123"
      @user.password_confirmation = "test"
      expect(@user).to_not be_valid
    end
  end
  describe 'authenticate_with_credentials' do

  end
end
