require_relative "die.rb"

module Auditable
  def audit
    puts "Rolled a #{self.number} (#{self.class})"
  end
end
