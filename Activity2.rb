
'''Problem 1'''
class Laptop
  def initialize(brand, model)
    @brand = brand
    @model = model
  end

  def brand
    @brand
  end

  def model
    @model
  end
end

laptop = Laptop.new("Apple", "MacBook Pro")
puts "Brand: #{laptop.brand}, Model: #{laptop.model}"



'''Problem 2'''
class Gadget
  attr_reader :name 
  attr_writer :price 

  def initialize(name, price)
    @name = name
    @price = price
  end

  def price
    @price
  end
end

gadget = Gadget.new("Smartphone", 999) 
puts "Name: #{gadget.name}"           
gadget.price = 899                    
puts "Updated Price: #{gadget.price}" 

''' Problem 3'''
class User
  attr_reader :username

  def username=(value)
    raise ArgumentError, "Username cannot be empty" if value.nil? || value.empty?

    @username = value
  end
end

user = User.new
user.username = "JohnDoe"
puts "Username: #{user.username}"


'''Problem 4'''
class Appliance
  def self.show_info
    puts "This is a household appliance."
  end
end

class Refrigerator < Appliance
  def self.show_info
    super
    puts "This is a refrigerator."
  end
end

class Microwave < Appliance
  def self.show_info
    super
    puts "This is a microwave."
  end
end

Refrigerator.show_info
Microwave.show_info

'''Problem 5'''
module Payments
  class Invoice
    def initialize(number)
      @number = number
    end
  end

  class Receipt
    def initialize(number)
      @number = number
    end
  end
end

invoice = Payments::Invoice.new(123)
receipt = Payments::Receipt.new(456)

'''Problem 6'''
module Drivable
  def drive
    puts "Driving..."
  end
end

class Car
  include Drivable
end

class Truck
  include Drivable
end

car = Car.new
car.drive

truck = Truck.new
truck.drive


'''Problem 7'''
class Writer
  def create
    puts "Writing..."
  end
end

class Painter
  def create
    puts "Painting..."
  end
end

def showcase_talent(artists)
  artists.each { |artist| artist.create }
end

artists = [Writer.new, Painter.new]
showcase_talent(artists)


'''Problem 8'''
class BankAccount
  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    log_transaction(amount, "Deposit")
  end

  def withdraw(amount)
    @balance -= amount
    log_transaction(amount, "Withdrawal")
  end

  private

  def log_transaction(amount, type)
    puts "#{type}: $#{amount}"
    puts "Current Balance: $#{@balance}"
  end
end

account = BankAccount.new
account.deposit(100)
account.withdraw(50)


'''Problem 9'''
class Camera
  def initialize
    @status = "off"
  end

  def turn_on
    @status = "on"
    puts "Camera is #{@status}."
  end

  def turn_off
    @status = "off"
    puts "Camera is #{@status}."
  end
end

camera = Camera.new
camera.turn_on
camera.turn_off

'''Problem 10'''
class Quiz
  QUESTIONS = {
    math: "What is 2 + 2?",
    history: "Who was the first president of the United States?"
  }.freeze

  QUESTIONS.each do |category, question|
    define_method("question_about_#{category}") do
      puts question
    end
  end
end

quiz = Quiz.new
quiz.question_about_math
quiz.question_about_history
