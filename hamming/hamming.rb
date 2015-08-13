class Hamming
  VERSION = 1

  def self.compute(first_strand, second_strand)
    fail ArgumentError, 'DNA strands should be equal in size' unless first_strand.length == second_strand.length

    point_mutations = []

    first_strand.chars.each_with_index do |nucleotide, index|
      point_mutations[index] = (second_strand[index] == nucleotide)
    end

    point_mutations.count(false)
  end
end