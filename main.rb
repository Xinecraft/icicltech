#!/usr/bin/ruby -w
def get_word_list(wordlist,words)
  solution = Array.new
  for word in words
    for wl in wordlist
      if word.include?wl
        solution.push wl
        next
      end
    end
  end
  return solution
end

#https://www.ef.co.uk/english-resources/english-vocabulary/top-3000-words
wordlist = File.readlines('words.txt').map { |line| line.strip }

words = %w[donations beverages placement performed metallica thousands]

# Create Wordlist Vertically
words2 = Array.new
for i in 0..8
  wd = String.new;
  for w in words
    wd = wd + w[i]
  end
  words2[i] = wd
  puts
end

# Create Wordlist Diagonally
words3 = Array.new
words3 = words.reverse.each_with_index.map{|s,i| " " * i + s }.inject(Array.new(words.size + words.last.size-1,"")) do |a,s|
  s.chars.each_with_index do |c,i|
    a[i] = c + a[i]
  end
  a
end.map(&:strip)

# Combine All
wordsfinal = words + words2 + words3

# Call function to match against.
solution = get_word_list(wordlist,wordsfinal).uniq
puts "Score is: #{solution.size}"
print solution