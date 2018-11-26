require 'pry'

def dictionary
  hash = {
                  "hello" => "hi",
                  "to" => "2",
                  "too" => "2",
                  "two" => "2",
                  "be" => "b",
                  "you" => "u",
                  "at" => "@",
                  "and" => "&"
  }
end


def word_substituter(tweet)

  tweet.split.collect do |word|
  if dictionary.keys.include?(word.downcase)
    word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
  end


# let(:tweets) {[tweet_one, tweet_two, tweet_three, tweet_four, tweet_five]}


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
      puts word_substituter(tweet)
    end
end
