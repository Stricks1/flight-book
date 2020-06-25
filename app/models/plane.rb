class Plane < ApplicationRecord
    has_many :flights

    def nmodel
      name + "/" + model
    end
end
