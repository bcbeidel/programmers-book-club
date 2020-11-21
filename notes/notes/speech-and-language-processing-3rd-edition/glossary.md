# glossary

__text normalization:__ converting text into a convenient standard form

__tokenizing:__ separating out words from running text (i.e., "I have a cold" becomes ["I", "have", "a", "cold"])

__lemma:__ A lemma is a word that stands at the head of a definition in a dictionary. All the head words in a dictionary are lemmas. Technically, it is "a base word and its inflections".

__lemmatization:__ refers to doing things properly with the use of a vocabulary and morphological analysis of words, normally aiming to remove inflectional endings only and to return the base or dictionary form of a word, which is known as the lemma

| word | lemma |
|------|-------|
| sing | sing  |
| sang | sing  |
| sung | sing  |

__stemming:__ Stemming is the process of reducing inflection in words to their root forms such as mapping a group of words to the same stem even if the stem itself is not a valid word in the Language."

| word      | stem   |
|-----------|--------|
| trouble   | troubl |
| troubling | troubl |
| troubled  | troubl |

__edit distance:__ measure of how similar two strings are based on the number of edits to get to the same string

__regular expression:__ language for expressing search strings, algebraic notation 

__corpus:__ in linguistics, a corpus (plural corpora) or text corpus is a large and structured set of texts In corpus linguistics

__character set (regex):__ a notation suggesting one of multiple characters could meet a regex criteria; indicated by `[]`

__range (regex):__ regex pattern marked by the pattern `/[a-z]/` where `a` and `z` are any character and it matches any character matches any ordered character between the two, inclusive.  In this case any lower case letter would match `/[a-z]/`

__disjunction (regex):__ provides an `or` operator for a set of text.  If we wanted "cat" or "dog" we would identify that with a disjunction, identified with the pipe operator.  (i.e., "`/[cat|dog]/`" )

__Kleene star `*` (regex):__ "cleany star" - indicates that zero or more instances of the previous statement must be present to get a match

__Kleene plus `+` (regex):__ "cleany plus" - indicates that one ore more instances of a the previous regex statement must be present to match

__wildcard `.` (regex):__  matches any character. For example, a.b matches any string that contains an "a", then any other character and then a "b", a.*b matches any string that contains an "a" and a "b" at some later point.

__corpus, corpora (words):__ a computer readable collection of text or speech

__utterance (words):__ spoken correlate of a sentence

__disfluency (words):__ is any of various breaks, irregularities, or non-lexical vocables that occurs within the flow of otherwise fluent speech

__fragment (words):__ a small, broken off part of a word

__fillers | filled pauses (words):__ an apparently meaningless word, phrase, or sound that marks a pause or hesitation in speech

__word types (corpus):__ the number of distinct words in a corpus

__word tokens (corpus):__ the total number of N running words

__clitic (words):__ a part of a  word that cannot stand on its own (i.e., `'re` in `we're`)

__case folding (normalization):__ everything is mapped to lower case

__lemmatization:__ task of determining that two words have the same root. The words `am`, `are`, and `is` have the shared lemma `be`; the words `dinner` and `dinners` both have the lemma `dinner`

__morphology:__ the study of the way words are built up from smaller meaning units called `morphemes`

__stem (morpheme):__ central morpheme of a word, supplies the main meaning (ex: `cat` in `cats`)

__affixes (morpheme):__ morpheme that brings additional meaning to a word (ex: `-s` in `cats`)

__coreference (edit distance):__ the task of deciding if two strings refer to the same entity, for example. `Stanford President John Hennessy` and `Stanford University President John Hennessy` refer to the same entity, despite the one word difference.

__minimum edit distance:__ the minimum number of edit operations (e.g., insertion, deletion, substitution) needed to transform one string into another