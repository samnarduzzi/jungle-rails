require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    let(:user) { User.create(first_name: "Miley", last_name: "Cyrus", email: "miley1@test.com", password: "12345", password_confirmation: "12345") }

    it "should create a valid user" do
      expect(user).to be_valid
    end

    it "is not valid without a first name" do
      user.first_name = nil
      expect(user).not_to be_valid
    end

    it "is not valid without a last name" do
      user.last_name = nil
      expect(user).not_to be_valid
    end

    it "is not valid without an email" do
      user.email = nil
      expect(user).not_to be_valid
    end

    it "is not valid without a password" do
      user.password = nil
      expect(user).not_to be_valid
    end

    it "is not valid if password and password confirmation don't match" do
      user.password_confirmation = nil
      expect(user).not_to be_valid
    end

    it "is not valid if password is less than 5 characters long" do
      user.password = "123"
      expect(user).not_to be_valid
    end

    it "must not allow a duplicate email regardless of case" do
      user1 = User.create(first_name: "Miley", last_name: "Cyrus", email: "miley1@test.com", password: "12345", password_confirmation: "12345")
      user1.save

      user2 = User.create(first_name: "Miley", last_name: "Cyrus", email: "MILEY1@test.com", password: "12345", password_confirmation: "12345")
      expect(user2).not_to be_valid
    end
  end

  describe ".authenticate_with_credentials" do
    user = User.create(first_name: "Jane", last_name: "Doe", email: "jane@test.com", password: "12345", password_confirmation: "12345")

    it "should authenticate even with whitespace in email" do
      expect(User.authenticate_with_credentials("  jane@test.com ", "12345")).not_to be_nil
    end

    it "should authenticate even with wrong cases for email" do
      expect(User.authenticate_with_credentials("jAnE@tEsT.com", "12345")).not_to be_nil
    end
  
  end
end
