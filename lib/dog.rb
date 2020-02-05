class Dog
  attr_accessor :name  
  
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    save
  end

  def self.clear_all
    @@all.clear
  end

  def self.print_all
     self.all.map do |dog|
      puts dog.name
    end
  end

  def save
    @@all << self
  end
end