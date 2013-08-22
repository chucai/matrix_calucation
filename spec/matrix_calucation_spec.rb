require "spec_helper"

describe  MatrixCalucation do 
	it "should be ok" do 
		true.should be_true
	end

	it "version should eql 0.0.1" do 
		MatrixCalucation::VERSION.should eql '0.0.1'
	end

	#
	#  1 2
	#  3 4
	context "simple" do 
		before do 
			@matrix = MatrixCalucation::Matrix.new([1,2], [3,4])
		end

		describe "sum" do 
			it "should eql 10 when n = nil" do 
				@matrix.sum.should eql 10
			end

			it "should eql 7 wehn n = 3" do 
				@matrix.sum(3).should eql 7
			end
		end

		describe "size" do 
			it "should eql 4" do 
				@matrix.size.should eql 4
			end
		end

		# #should remove to bridge spec class
		# describe "convert_to_array" do
		# 	it "should eql [1,2,3,4]" do 
		# 		@matrix.send(:bridge).convert_to_array.should eql [1,2,4,3]
		# 	end 
		# end

		# describe "one_convert_number" do 
		# 	it "should eql 4" do 
		# 		@matrix.send(:bridge).one_convert_number.should eql 4
		# 	end
		# end
	end

	##
	## 1 2 3
	## 4 5 6
	## 7 8 9
	context "middle" do 
		before do 
			@matrix = MatrixCalucation::Matrix.new
			@matrix.append %w(1 2 3)
			@matrix.append %w(4 5 6)
			@matrix.append %w(7 8 9)
		end

		describe "convert_to_array" do 
			it "should eql [1,2,3,6,9,8,7,4,5]" do 
				@matrix.convert_to_array.should eql %w(1 2 3 6 9 8 7 4 5)
			end
		end

		describe "sum" do 
			it "should eql 29 when n = 6" do 
				@matrix.sum(6).should eql 29
			end
		end
	end

	##
	##
	# 12 32 09 11 34
	#	08 54 76 23 07
  #	27 18 25 09 43
	#	11 23 78 63 19
	#	09 22 56 31 05
	context "complex" do 
		before do 
			@matrix =  MatrixCalucation::Matrix.new
			@matrix.append(%w(12 32 09 11 34))
			@matrix.append(%w(08 54 76 23 07))
			@matrix.append(%w(27 18 25 09 43))
			@matrix.append(%w(11 23 78 63 19))
			@matrix.append(%w(09 22 56 31 05))
		end

		describe "convert_to_array" do 
			it "should be true" do 
				result = %w(12 32 09 11 34 07 43 19 05 31 56 22 09 11 27 08 54 76 23 09 63 78 23 18 25)
				@matrix.convert_to_array.should eql result
			end
		end

		describe "sum" do 
			it "should get right sum number" do
				{
					3 => 53, 
					8 => 167
				}.each do |n, v|
					@matrix.sum(n).should eql v
				end 
			end
		end
	end

end