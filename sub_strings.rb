def substrings string, sub_strings
    result = {}
    string.downcase!
    sub_strings.each do|sub_string|
        result[sub_string] = string.scan(/(?=#{sub_string})/).count if string.scan(/(?=#{sub_string})/).count > 0
    end
    puts result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)