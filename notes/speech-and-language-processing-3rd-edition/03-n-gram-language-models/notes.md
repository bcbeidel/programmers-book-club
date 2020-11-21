# Chapter 3: N-gram Language Models

Predicting the next word in a sequence is a fundamental component that feeds into many NLP tasks.  It requires that we assign `probabilities` to the next word a in a sequence.  It applies to tasks such as:

- speech recognition
- handwriting recognition
- spelling correction
- machine translation (language to language)
- augmentative communications

- **Language Models:** models that assign probabilities to sequences of words

- **n-gram:** a sequence of _N_ words. bi-gram (2), tri-gram (3), 

- **n-gram model:** Language model leveraging sequences of _N_ words to predict probabilities for a the last word in the _n-gram_ sequence 

## 3.1 N-Grams (p. 38)

## 3.2 Evaluating Language Models (p. 43)

### 3.2.1 Perplexity (p. 44)

## 3.3 Generalization and Zeros (p. 45)

### 3.3.1 Unknown Words (p. 48)

## 3.4 Smoothing (p. 49)

### 3.4.1 Laplace Smoothing (p. 49)

### 3.4.2 Add-k Smoothing (p. 51)

### 3.4.3 Backoff and Interpolation  (p. 51)

## 3.5 Kneser-Ney Smoothing (p. 53)

## 3.6 The Web and Stupid Backoff (p. 55)

## 3.7 Advanced: Perplexity's Relation to Entropy (p. 56)