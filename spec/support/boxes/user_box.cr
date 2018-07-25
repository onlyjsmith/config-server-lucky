class UserBox < LuckyRecord::Box
  def initialize
    email "test1@example.com"
    encrypted_password Authentic.generate_encrypted_password("password")
  end
end
