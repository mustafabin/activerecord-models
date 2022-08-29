class Role < ActiveRecord::Base
    has_many :auditions
    def actors
        self.auditions.pluck(:actor)
    end
    def locations
        self.auditions.pluck(:location)
    end
    def lead 
        self.auditions.where(hired: true)[0]
    end
    def understudy 
        self.auditions.where(hired: true)[1]
    end
end