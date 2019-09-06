class Building < ApplicationRecord
  has_many :apartments, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :num_floors, presence: true


  def self.most_apt
    @sorted_buildings = self.all.sort_by do |building|
      building.apartments.count
    end
    @sorted_buildings.last
  end

  def self.most_floors
    @sort_buildings = self.all.sort_by do |building|
      building.num_floors
    end

    @sort_buildings.last
  end

  def biggest_apt
      @sorted_apts = self.apartments.sort_by do |apt|
        apt.size
      end
    @sorted_apts.last
  end


end
