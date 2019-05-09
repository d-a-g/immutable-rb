BITS = 2
WIDTH = 1 << BITS
MASK = WIDTH - 1

def index_for(index, level)
  bit_offset = level * BITS
  return (index >> bit_offset) & MASK
end
