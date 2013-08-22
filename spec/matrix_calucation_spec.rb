require "spec_helper"

describe  MatrixCalucation do 
	it "should ok" do 
		true.should be_true
	end

	it "version should eql 0.0.1" do 
		MatrixCalucation::VERSION.should eql '0.0.1'
	end
	
end