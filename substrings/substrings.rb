def substrings(string, dictionary)
    substring = {}
    arr = string.downcase.split
    arr.each do |word|
        dictionary.each do |listing|
            if word.include? listing
                if !substring.has_key?(listing)
                    substring[listing] = 1
                else
                    substring[listing] += 1
                end
            end
        end
    end
    p substring
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)