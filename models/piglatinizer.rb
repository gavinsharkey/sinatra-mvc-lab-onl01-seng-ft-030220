class PigLatinizer

  def piglatinize(text)
    words = text.split(' ')
    words.map do |word|
      if word.match?(/^[aeiou].*/i)
        "#{word}way"
      else
        consonants = ['nth', 'sch', 'scr', 
        'shr', 'spl', 'spr', 'squ', 'str', 'thr', 'bl', 'br', 'ch', 'ck', 'cl', 'cr', 'dr', 'fl', 'fr', 'gh', 'gl', 'gr', 'ng', 'ph', 'pl', 'pr', 
        'qu', 'sc', 'sh', 'sk', 'sl', 'sm', 'sn', 'sp', 'st', 'sw', 'th', 'tr', 'tw', 'wh', 'wr', 
        'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r','s','t', 'v', 'w', 'x', 'y', 'z']

        consonant = consonants.detect { |con| word.downcase.match?(/^#{con}.*/)}
        consonant = word.scan(/#{consonant}/i).first

        word.delete_prefix(consonant) + "#{consonant}ay"
      end
    end.join(' ')
  end
end