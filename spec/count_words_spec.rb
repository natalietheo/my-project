#A method called count_words that takes a string 
#as an argument and returns the number of words in 
#that string.

require 'count_words'

RSpec.describe 'count_words method' do
    it "counts number of words in a string" do
        result = count_words("one two three four five")
        expect(result).to eq 5
    end
end