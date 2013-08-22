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

		it "should eql 10" do 
			@matrix.sum.should eql 10
		end
	end

end