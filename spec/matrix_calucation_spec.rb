require "spec_helper"

describe  MatrixCalucation do 
	it "should ok" do 
		true.should be_true
	end

	it "version should eql 0.0.1" do 
		MatrixCalucation::VERSION.should eql '0.0.1'
	end

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

	end

end