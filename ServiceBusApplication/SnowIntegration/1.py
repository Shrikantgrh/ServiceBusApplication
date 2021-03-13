

input = "abccba"

def IsAlmostPalindrome(input):
    palin_flag= False
    arr_inp =[]
    for c in input:
        arr_inp.append(c)
    print(arr_inp)
    palindrome_arr = arr_inp.reverse()
    print(palindrome_arr)
    if palindrome_arr = arr_inp:
        palin_flag= True
        return palin_flag

    if palin_flag =False:
        word_count=0
        canbe_word=''
        newpalin_word=''
        for palindrome_word,word in palindrome_arr, arr_inp:
            if palindrome_word != word:
                word_count =word_count+1
                canbe_word=word
                newpalin_word=palindrome_arr[arr_inp[word].index()]

        if canbe_word =1 :
            palin_flag=True
            print("Is true if " canbe_word +"changed to"+newpalin_word)
            return palin_flag
        if canbe_word > 1:
            print("Not a palindrome")
            return False

    






IsAlmostPalindrome(input)