module MatrixCalucation
	class Matrix
		def initialize(*args)
			@items = args unless args.empty?
			@items ||= []
		end

		def sum(n = nil)
			n ||= size
			array = convert_to_array
			# binding.pry
			sum = 0
			(0...n).each do |i|
				sum += array[i].to_i
			end 
			return sum
		end

		def convert_to_array
			copy = @items
			bridge = Bridge.new copy
			bridge.array
		end

		def append(array)
			@items << array
		end


		def size
			@size ||= @items.flatten.size
		end
	end
end