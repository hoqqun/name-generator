class Name < ApplicationRecord
  extend :Enumerize

  enumerize :gender, in: [:male :female]
end
