module NumbersAndWords
  module Strategies
    module FiguresConverter
      module Languages
        class Ro < Base
          include Families::Latin

          def ones
            super({:gender => gender})
          end
	  
	  def tens_with_ones
	      super({:gender => gender})
	  end
	  
          def hundreds
            super({:gender => gender})
          end
	  
          def megs
            super({:number => @figures.number_in_capacity(@current_capacity), :gender => gender})
          end
	  
	    def gender
		pp @current_capacity
		@current_capacity ||= 0

		case @current_capacity
		when 0
		    options.gender.result
		when 1
		    :female
		when 2
		    :female
		when 3
		    :female
		else
		    :neuter
		end
	    end
	  
#           private

        end
      end
    end
  end
end
