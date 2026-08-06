=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

class Complement
  def self.of_dna(sequence)
    (sequence.chars.map do |char|
      case char
      when 'C'
        'G'
      when 'G'
        'C'
      when 'T'
        'A'
      when 'A'
        'U'
      else
        char
      end
    end).join
  end
end
