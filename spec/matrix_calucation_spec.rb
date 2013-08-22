require "spec_helper"

describe  MatrixCalucation do 
	it "should ok" do 
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

			it "should eql 6 wehn n = 3" do 
				@matrix.sum(3).should eql 6
			end
		end

		describe "size" do 
			it "should eql 4" do 
				@matrix.size.should eql 4
			end
		end

		describe "convert_to_array" do
			it "should eql [1,2,3,4]" do 
				@matrix.convert_to_array.should eql [1,2,4,3]
			end 
		end

		describe "one_convert_number" do 
			it "should eql 4" do 
				@matrix.one_convert_number.should eql 4
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

		describe "one_convert_number" do 
			it "should eql 16" do 
				@matrix.one_convert_number.should eql 16
			end
		end
	end

end