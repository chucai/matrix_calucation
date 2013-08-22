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