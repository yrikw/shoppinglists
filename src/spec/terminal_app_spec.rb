#require_relative ('../terminal_app')

describe 'terminal_app' do
    before(:each) do
       @deleteitem = "banana"
    end
    it 'should instance of a deleteitem' do
    expect(@deleteitem).to be_a String
    end
end

