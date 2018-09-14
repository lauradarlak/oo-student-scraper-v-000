class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  attr_accessor :name, :user_name, :age, :location, :bio

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end
end

  def initialize(student_hash)
    student_hash.each {|key, value| self.send(("#{key}="), value)}

  end

  def self.create_from_collection(students_array)
    students_array.each {|student| self.new(student)}
  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
