module MatrixCalucation

	class Bridge
		def initialize(items)
			@items = items
		end

		#每循环一次需要处理的数据量
		def one_convert_number
			2*(x+y) - 4
		end

		def first
			first = @items.first 
		end

		def last
			last = @items.last
		end

		def x
			@items.first.size 
		end

		def y 
			@items.size
		end

		def array 
			array = []
			(0...one_convert_number).each do |i|
				case i
				when 0...x
					array << first[i]
				when x...(x+y-2)
					array << @items[i+1-x].last
				when ((x+y-2)..(2*x+y-3))
					index = 2*x+y-i-3
					array << last[index]
				when ((2*x+y-2)...one_convert_number)
					index = one_convert_number - (2*x + y - 2)
					array << @items[index].first
				end
			end
			array.flatten
		end

	end

end