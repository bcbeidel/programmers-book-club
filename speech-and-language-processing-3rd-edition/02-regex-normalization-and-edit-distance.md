# Chapter 2: Regular Expressions, Text Normalization, Edit Distance

## Key Terms:

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

---

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

### regex: disjunction (i.e., `[]`)

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

### regex negation (i.e., `^` at beginning of set)

- square brackets can be used to specify what a single character cannot be.  For instance "`/[^a]/`" would match any character except "a".
- must be at the beginning of set declaration to be used this way

| regex      |              matches                      |
| ---------- | ---------------------------------------   | 
| `/[^A-Z]/` | anything other than an uppercase letter   | 
| `/[^Ss]/`  | neither "S" nor "s"                       |
| `/[^\.]/`  | not a "." (period)                        |
| `/[e^]/`   | either "e" or "^", this is not a negation |
| `/[a^b]/`  | the pattern "a^b", this is not a negation |
