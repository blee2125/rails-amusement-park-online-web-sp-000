class User < ActiveRecord::Base
    has_secure_password
    has_many :rides
    has_many :attractions, through: :rides
    attribute :admin, :boolean, default: "false"

    

    def mood
        if !admin
            happiness > nausea ? "happy" : "sad"

        end
    end
end
