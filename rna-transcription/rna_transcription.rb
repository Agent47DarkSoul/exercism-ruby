class Complement
  VERSION = 1

  RNA_TRANSCRIPTION = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  DNA_TRANSCRIPTION = RNA_TRANSCRIPTION.invert

  def self.of_dna(dna_strand)
    raise ArgumentError if dna_strand.chars.any? do |nucleotide|
      RNA_TRANSCRIPTION[nucleotide].nil?
    end

    dna_strand.chars.map { |nucleotide| RNA_TRANSCRIPTION[nucleotide] }.join
  end

  def self.of_rna(rna_strand)
    raise ArgumentError if rna_strand.chars.any? do |nucleotide|
      DNA_TRANSCRIPTION[nucleotide].nil?
    end

    rna_strand.chars.map { |nucleotide| DNA_TRANSCRIPTION[nucleotide] }.join
  end
end