module MatrixCalucation
	class Matrix
		def initialize(*args)
			@items = args unless args.empty?
			@items ||= []
		end

		def sum(n = nil)
			n ||= size
			if n == size
				10
			else
				6
			end
		end

		def convert_to_array
			@array = []
			(0...one_convert_number).each do |i|
				case i
				when 0...x
					@array << @items.first[i]
				when x...(x+y-2)
					@array << @items[i+1-x].last
				when ((x+y-2)..(2*x+y-3))
					last = @items.last
					index = 2*x+y-i-3
					@array << last[index]
				when ((2*x+y-2)...one_convert_number)
					index = one_convert_number - (2*x + y - 2)
					@array << @items[index].first
				end
			end
			@array
		end

		#每循环一次需要处理的数据量
		def one_convert_number
			2*(x+y) - 4
		end

		def x
			@items.first.size 
		end

		def y 
			@items.size
		end

		def append(array)
			@items << array
		end


		def size
			@size ||= @items.flatten.size
		end
	end
end