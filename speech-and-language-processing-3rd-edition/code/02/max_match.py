class MaxMatchWordSegmenter:
    """
    Basic max-match implementation for word segmentation using a given dictionary.
    Tends to have very bad results for English.
    """

    def __init__(self, dictionary):
        """
        :param dictionary: dictionary containing all words that may be in given strings
        """
        self.dictionary = dictionary

    def segment_words(self, string):
        """
        Segments a sentence into words using the max-match algorithm.  
        This will attempt to greedily find the largest words in a 
        sentence, starting at the beginning and moving left-to-right 
        with the remaining string.

        :param string: words without spaces separating them
        :return: list of words that are a word segmentation of the given string
        """
        words = []

        word_begin = 0
        while word_begin < len(string):
            word = self.find_longest_word(string[word_begin:])
            words.append(word)
            word_begin += len(word)

        return words

    def find_longest_word(self, string):
        """
        Finds the longest word that is a prefix of a given string

        :param string: string for which to find the longest word prefix
        :return: longest prefix of the given string, or the first letter of the string if there is no word prefix
        """
        word_end = len(string)
        while word_end > 1:
            test_word = string[:word_end]
            if self.dictionary.is_word(test_word):
                return test_word
            word_end -= 1
        return string[0]