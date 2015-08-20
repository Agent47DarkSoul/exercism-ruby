require 'forwardable'

class DNAStrand
  extend Forwardable
  def_delegators :@strand, :length
  def_delegator :@strand, :chars, :nucleotides

  def initialize(stringified_strand)
    @strand = stringified_strand
  end

  def comparable?(other_strand)
    length == other_strand.length
  end

  def mutations_from(other_strand)
    nucleotides.each_with_index.map { |nucleotide, i|
      other_strand.has?(nucleotide, i)
    }.count(false)
  end

  def has?(nucleotide, index)
    @strand[index] == nucleotide
  end
end
