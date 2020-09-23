class Quote < ApplicationRecord
  generate_public_uid generator: PublicUid::Generators::HexStringSecureRandom.new(16)

  self.primary_key = "public_uid"
end
