class Apartment < ApplicationRecord
 belongs_to :building

 validates :apt_num, presence: true, uniqueness: true

   def self.largest_apt
     @sort_apts = self.all.sort_by do |apt|
       apt.size

     end
     # @sort_apts.last
     @sort_apts


   end


   def self.lg_apt
     self.all.inject({}) do |hash, apt|
       hash[apt.id] = {
         apt_num: apt.apt_num,
         size: apt.size,
         building_id: apt.building_id
       }
       @apt_size = hash[apt.id][:size].sort do |size|

    end
    @apt_size.last

  end
end



end
