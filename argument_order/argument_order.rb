=begin
It is a bad practice in design to make classes or methods depend on some specific order
for paramters to be delivered, instead you can set default values if they are not given
and make your class take a hash of arguments instead.  That way, you can easily add arguments
later on without conflicting with other parts of the class.
=end
class ArgumentOrderDependencies
  attr_accessor :name,:age,:birthPlace,:isMale
  def initialize(args)
    @age = args.fetch(:age, 0)  # if the age hash is not found, 0 is defined as age.
    @name = args.fetch(:name, "AJ")
    @birthPlace = args.fetch(:birthPlace,"Atlantic Ocean")
    @isMale = args.fetch(:isMale,true)
  end

end
