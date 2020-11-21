# Chapter 2: Regular Expressions, Text Normalization, Edit Distance

## 2.1 Regular Expressions (p.11)

### regex: simple character match

- `/woodchuck/` matches first occurrence of "woodchuck" in a string
- can consist of a single character
- is case sensitive

| regex         | example match                    |
| ------------- | -------------------------------- |
| `/woodchuck/` | "interesting link to woodchucks" |
| `/a/`         | "Mary Ann stopped by Mona's"     |
| `/!/`         | "Wham!"                          |

### regex: One of multiple characters could match (i.e., `[]`)

- notation suggesting one of multiple characters could meet a regex criteria; indicated by `[]`
- ex: `/[wW]/` could match "w" or "W"

| regex            | matches                    |
| ---------------- | ---------------------------|
| `/[Ww]oodchuck/` | "woodchuck" or "Woodchuck" |
| `/[abc]/`        | "a" or "b" or "c"          |
| `/[0123456789]/` | "plenty of 9 to 5"         |

### regex: range (i.e., `/[X-X]/`)

- marked with the pattern `/[X-X]/`
- matches with any character between the two characters, inclusive

| regex     |              matches |
| --------- | -------------------- |
| `/[A-Z]/` | any uppercase letter |
| `/[a-z]/` | any lowercase letter |
| `/[0-9]/` | any single digit     |

### regex: negation (i.e., `^` at beginning of set)

- square brackets can be used to specify what a single character cannot be.  For instance "`/[^a]/`" would match any character except "a".
- must be at the beginning of set declaration to be used this way

| regex      |              matches                      |
| ---------- | ---------------------------------------   | 
| `/[^A-Z]/` | anything other than an uppercase letter   | 
| `/[^Ss]/`  | neither "S" nor "s"                       |
| `/[^\.]/`  | not a "." (period)                        |
| `/[e^]/`   | either "e" or "^", this is not a negation |
| `/[a^b]/`  | the pattern "a^b", this is not a negation |

### regex: optional characters with "?"

- the question mark "?" indicates that the previous statement is optional
- This could also be considered to be saying "match either zero or one instances of the previous statement

| regex          |          matches            |
| -------------- | --------------------------- |
| `/woodchucks?/`| "woodchuck" or "woodchucks" |
| `/colou?r/`    | "color" or "colour"         |

### regex: Kleene star `*`

- `*` indicates that zero or more instances of the previous character must match 
- for example `/[ab]*/` could be stated as match zero or more of any instance of the character "a" or the character "b".  This would be very inclusive and could contain instances where neither "a" nor "b" exist 

| regex     |          match examples             |
| --------- | ----------------------------------- |
| `/a*/`    | "a", "baa", "zoo" (i.e., zero case) |
| `/[ab]*/` | "cat", "ball", "boy", "dog", "zoo"  |

### regex: Kleene plus `+`

- `+` indicates one or more occurrences of previous characters mst be present in order to match

| regex      |          matches                       |
| ---------  | -------------------------------------- |
| `/[0-9]+/` | one more digits "How many fingers? 5." |
| `/[A-Z]+/` | one or more capital letters "John"     |

### regex: Anchors `^`, `$`, `\b`, `\B`

- indicates that the character string must be `anchored` to a particular type of instance in order to match
    - `^`  Beginning of line
    - `$`  End of line
    - `\b` Word boundary
    - `\B` Non-word boundary

| regex      |          matches                               |
| ---------  | ---------------------------------------------- |
| `/^The/`   | `The` at the beginning of a string             |
| `/dog$/`   | matches lines ending with `dog`                |
| `/\bthe\b/`| matches `the` as a standalone word not `other` |
| `/\Bthe\B/`| matches `other` not the standalone `the`       |

### regex: disjunction (i.e., the `|` pipe operator)

- acts as an `or` operator, allowing for a match on either side of the operator

| regex       |          matches                               |
| ----------- | ---------------------------------------------- |
| `/dog|cat/` | Matches strings that contain `cat` or `dog`    |

### regex: parenthesis 

- allows for grouping and limiting of other operators to limited scope

| regex           |      matches                                                        |
| --------------- | ------------------------------------------------------------------- |
| `/gupp(y|ies)/` | limits the disjunction to the ending, matches `guppies` and `guppy` |

### regex: Operator Precedence

Operators are evaluated according to a strict hierarchy, from highest to lowest.

- Parenthesis `()`
- Counters `*`, `+`, `?`, `{}`
- Sequences and Anchors `the` `^my` `end$`
- Disjunction `|`

### regex: Common Aliases

| regex | Expansion      | Matches                         |
| ----- | -------------- | ------------------------------- |
| `\d`  | `[0-9]`        | any digit                       |
| `\D`  | `[^0-9]`       | any non digit                   |
| `\w`  | `[a-zA-Z0-9_]` | any digit, letter or underscore |
| `\W`  | `[^\w]`        | a non-alphanumeric              |
| `\s`  | `[ \r\t\n\f]`  | whitespace, tab, space          |
| `\S`  | `[^\S]`        | non-whitespace                  |

### regex: range of numbers

| regex   | matches                                            |
| ------- | ---------------------------------------------------|
| `*`     | zero or more of the previous expression            |
| `+`     | one ore more of the previous expression            |
| `?`     | exactly zero or one of the previous expression     |
| `{n}`   | `n` occurrences of the previous expression         |
| `{n,m}` | from `n` to `m` occurrences of previous expression |
| `{n,}`  | at least `n` occurrences of the last expression    |
| `{,m}`  | up to `m` occurrences of the last expression       |

### regex: Special characters + Literals

- a backslash `\` permits the capture of special character literals

| regex | matches             |
| ----- | ------------------- |
| `\*`  | an asterisk `*`     |
| `\.`  | a period `.`        |
| `\?`  | a question mark `?` |
| `\n`  | a new line          |
| `\t`  | a tab               |

### regex: capture group

- the use of of parenthesis to store a pattern in memory, each resulting match is stored in a numbered `register` take the following for example:

`/the (.*)er they (.*), the \1er we \2/`

matches...

`the faster they ran, the faster we ran`

but not

`the faster they ran, the faster we ate`

### regex: non-capturing group

- putting the command `?:` at the beginning of a capture group says 'ignore this' as a capture group for example:

`/(?:some|a few) (people|cats) like some \1/`

would match

`some cats like some cats`

but not 

`some cats like some a few`

### regex: lookahead assertions

- make use of the `(?=` syntax of the capture group with the operator

- `(?= pattern)` is true if pattern occurs, this expression is zero width
- `(?! pattern)` is true if pattern does not occur, this expression is zero width
 
| regex                     | match                                                              |
| ------------------------- | ------------------------------------------------------------------ |
| `/^(?!Volcano)[A-Za-z]+/` | match any lines with characters that does not start with `Volcano` |

## 2.2 Words (p. 19)

### Word Types and Word Tokens

When talking about how many words exist, take the following definitions:

- __word types (corpus):__ the number of distinct words in a corpus `|V|`
- __word tokens (corpus):__ the total number of N running words `N`

> They picnicked by the pool, then lay back on the grass and looked at the stars.

The sentence above has `16` tokens and `14` types.  The repetition of `the` is the item to note and ignores punctuation.

### Herdan's Law | Heaps' Law (p. 20)

When talking about corpus size and the relationship between the number of types `|V|` and the number of tokens `N`.  If `k` and `β` are positive constants, and 0 < `β` < 1, then the relationship between the size of the corpus (i.e., number of tokens `N`) and the number of types `|V|` can be described as follows:

> `|V| = kN`<sup>`β`</sup>

`β` depends on the corpus size and genre but ranges between 0.67 and 0.75 for english.

## 2.4 Text Normalization (p. 22)

Three commonly applied steps:

1) Segmentation and Tokenization of words from text
2) Normalizing word formats
3) Sentence Segmentation

The techniques vary depending on the use case, Normalization techniques may result in loss of information otherwise useful for an analysis for instance.

- Removing contractions could negate the sentiment of a sentence (`can't` -> `can`)
- Removing capitalization may change the intended meaning (`ALL CAPS`, is yelling...)

### 2.4.3 Word Segmentation in Chinese (MaxMatch)

Languages such as Chinese, Japanese, and Thai do not use spaces to mark potential word boundaries.

`MaxMatch` is a greedy algorithm used as a baseline for word segmentation in Chinese.  It requires a dictionary of the language.

- Starts at the beginning of a sentence
- chooses the longest word that matches input at current position
- pointer advances to the end of the identified word
- if no word matches, pointer moves one character forward

### 2.4.4 Collapsing words: Lemmatization and Stemming (p. 26)

__lemmatization:__ task of determining that two words have the same root. The words `am`, `are`, and `is` have the shared lemma `be`; the words `dinner` and `dinners` both have the lemma `dinner`

__morphology:__ the study of the way words are built up from smaller meaning units called `morphemes`

__stem (morpheme):__ central morpheme of a word, supplies the main meaning (ex: `cat` in `cats`)

__affixes (morpheme):__ morpheme that brings additional meaning to a word (ex: `-s` in `cats`)

#### 2.4.4 Collapsing words: Porter Stemming (p. 27)

_Crude_ algorithm that uses a cascading, rewrite rules that chops off parts of words based on a series of rules.  For example:

- `ATIONAL` -> `ATE` (e.g., `relational` -> `relate`)
- `ING` -> `""` (e.g., `motoring` -> `motor`)
- `SSES` -> `SS` (e.g., `grasses` -> `grass`)

### 2.4.5 Byte-Pair Encoding

When applied to `tokenization`, merges frequent pairs of characters into single words.

- Represent the the string with a set of symbols equal to the characters, plus an end of word symbol
- At each step: (repeat `k` times where `k` is a parameter)
    - count the number of symbol pairs
    - find the most frequent pair (`A`, `B`)
    - replace the most frequent pair with new, merged symbol (`AB`)

Note: This algorithm is run inside words, not across word boundaries...

### 2.4.6 Sentence Segmentation (p. 29)

> In general, sentence tokenization methods work by building a binary classifier (base on a sequence of rules or on machine learning) that decides if a period is a part of a word or is a sentence-boundary marker.  In making this decision, it helps to know if the period is attached to a commonly used abbreviation; thus, an abbreviation dictionary is useful.

## 2.5 Minimum Edit Distance (p. 30)

Much of NLP is focused on describing how similar two strings are, take for example spelling correction.  How similar is a misspelled word to a word in the dictionary.  The closet one is probably the suggestion.

__coreference (edit distance):__ the task of deciding if two strings refer to the same entity, for example. `Stanford President John Hennessy` and `Stanford University President John Hennessy` refer to the same entity, despite the one word difference.

__minimum edit distance:__ the minimum number of edit operations (e.g., insertion, deletion, substitution) needed to transform one string into another

Weights matter.  A weight of 1 could be applied to all operations.  One of the the simplest weighting is the `Levenshtein` distance, where everything is given a cost of 1.  An alternative is do disallow substitution (which requires a deletion and insertion to replace a letter) 

### 2.5.1 Minimum Edit Distance: Minimum Edit Distance Algorithm