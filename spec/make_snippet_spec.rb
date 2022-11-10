#A method called make_snippet that takes a string as an argument and returns the first 
#five words and then a '...' if there are more than that.

require 'make_snippet'

RSpec.describe 'make_snippet method' do
    context "when given an empty string" do
    it 'returns an empty string' do
        result = make_snippet("")
        expect(result).to eq ""
        end
    end

    context 'given less than 5 words' do
    it 'returns the string' do
        result = make_snippet("one two three four")
        expect(result).to eq "one two three four"
        end
    end

    context 'given a string of 5 words' do
        it 'returns the string' do
            result = make_snippet("one two three four five")
            expect(result).to eq "one two three four five"
            end
        end

        context 'given a string of 6 words' do
            it 'returns the string with ...' do
                result = make_snippet("one two three four five six")
                expect(result).to eq "one two three four five ..."
                end
            end
end