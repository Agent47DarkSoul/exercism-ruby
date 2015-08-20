require_relative 'dna_strand'

module Hamming
  VERSION = 2

  def self.compute(first_strand, second_strand)
    first_strand = DNAStrand.new(first_strand)
    second_strand = DNAStrand.new(second_strand)

    fail ArgumentError, 'DNA strands should be equal in size' unless first_strand.comparable?(second_strand)

    first_strand.mutations_from(second_strand)
  end
end
