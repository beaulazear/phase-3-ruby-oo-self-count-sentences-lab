require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    split_arr = self.split(/\.|\?|!/)
    no_empty = split_arr.reject(&:empty?)
    sentence_count = no_empty.length
    sentence_count
  end
end