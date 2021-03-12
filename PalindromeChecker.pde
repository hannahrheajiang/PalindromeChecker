public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  for (int i = 0; i < lines.length; i++){
    lines[i] = noCapitals(onlyLetters(noSpaces(lines[i])));
  }
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

//check if reversee = true, or if string is palindrome
public boolean palindrome(String word)
{
  if (word.equals(reverse(word))){
    return true;
  }
  return false;
}

//reverse string
public String reverse(String str)
{
    if (str.length() < 1){
    return "";
  }
  return reverse(str.substring(1)) + str.charAt(0);
}

//remove punctuation
public String onlyLetters(String sString){
  String letters = "";
  for (int i = 0; i < sString.length(); i++){
    if (Character.isLetter(sString.charAt(i)) == true){
      letters += sString.charAt(i);
    }
  }
  return letters;
}

// change capital letters to lowercase letters
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

//remove spaces
public String noSpaces(String sWord){
  String noSpace = "";
  for (int i = 0; i < sWord.length(); i++){
    if (sWord.charAt(i) != ' '){
      noSpace += sWord.charAt(i);
    }
  }
  return noSpace;
}
