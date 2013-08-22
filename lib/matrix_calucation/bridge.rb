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
			return @items.first if @items.size == 1
			return [] if @items.size == 0
			array = []
			copy = Marshal.load(Marshal.dump(@items))
			@delete_index = []
			(0...one_convert_number).each do |i|
				case i
				when 0...x
					array << first[i]
					copy[0].delete_at(i)
					copy[0].insert(i, 'tag')
				when x...(x+y-2)
					array << @items[i+1-x].last
					copy[i+1-x].delete_at(x-1)
					copy[i+1-x].insert(x-1, 'tag')
				when ((x+y-2)..(2*x+y-3))
					index = 2*x+y-i-3
					array << last[index]
					copy[y-1].delete_at(index)
					copy[y-1].insert(index, 'tag')
				when ((2*x+y-2)...one_convert_number)
					index = one_convert_number - i 
					array << @items[index].first
					copy[index].delete_at(0)
					copy[index].insert(0, 'tag')
				end
			end
			new_item = clear(copy)
			unless new_item.empty?
				bridge = Bridge.new(new_item)
				new_array = bridge.array
				array += new_array
			end
			array.compact.flatten
		end

		#TODO: maybe could remove this method to Array
		def clear(array)
			array.each { |item| item.delete('tag') }
			array.delete_if { |item| item.empty? }
		end

	end

end