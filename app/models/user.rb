class User < ApplicationRecord
    serialize :frequencies
    serialize :ffts
end
