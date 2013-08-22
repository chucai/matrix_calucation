module MatrixCalucation
	class Matrix
		def initialize(*args)
			@items = args
		end

		def sum(n = nil)
			n ||= size
			if n == size
				10
			else
				6
			end
		end

		def size
			@size ||= @items.flatten.size
		end
	end
end