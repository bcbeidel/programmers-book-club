# Python code for BPE learning algorithm.  Sennrich et al. 2016
#
import re, collections

def get_stats(vocab):
    pairs = collections.defaultdict(int)
    for word, freq in vocab.items():
        symbols = word.split()
        for i in range(len(symbols) - 1):
            pairs[symbols[i], symbols[i +1]] += freq
    return pairs

def merge_vocab(pair, v_in):
    v_out = {}
    bigram = re.escape(' '.join(pair))
    p = re.compile(r"(?<!\S)" + bigram + r"(?!\S)")
    for word in v_in:
        w_out = p.sub(''.join(pair), word)
        v_out[w_out] = v_in[word]
    return v_out

vocab = {
    "l o w </w>" : 5,
    "l o w e s t </w>" : 2,
    "n e w e r </w>" : 6,
    "w i d e r </w>" : 3,
    "n e w </w>" : 2
}
num_merges = 8

for i in range(num_merges):
    pairs = get_stats(vocab)
    best = max(pairs, key=pairs.get)
    vocab = merge_vocab(best, vocab)
    print(best)

# Expected Output
#
# ('r', '</w>')
# ('e', 'r</w>') 
# ('e', 'w')
# ('n', 'ew')
# ('l', 'o')
# ('lo', 'w')
# ('new', 'er</w>')
# ('low', '</w>')

