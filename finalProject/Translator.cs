using System;
//using System.Windows.Forms.TextBox;
namespace Translator
{
  public class Translator
  {
    public static void Main(string[] args)
    {
      string c = "yes";
      while( c == "yes" )
      {
        Console.WriteLine("Enter phrase to be translated: ");
        string phrase = Console.ReadLine();
        //create instance of MorseCodeTranslator
        MorseCodeTranslator mct = new MorseCodeTranslator();
        //call to toMorseCode()
        Console.WriteLine(phrase + " = ");
        Console.WriteLine(mct.toMorseCode(phrase));

        Console.WriteLine("Continue? (yes for yes no for no)");
        c = Console.ReadLine();
      }
    }
  }
  public class MorseCodeTranslator
  {
    enum characters{
       a, b, c, d, e,
       f, g, h, i, j,
       k, l, m, n, o,
       p, q, r, s, t,
       u, v, w, x, y, z
     }
    public MorseCodeTranslator()
    {
      morseCode = new string[]{"._", "_...", "_._.", "_..", ".",".._.",
                              "__.", "....", "..", ".___", "_._", "._..",
                              "__", "_.", "___", ".__.", "__._", "._.",
                              "...", "_", ".._", "..._", ".__", "_.._",
                              "_.__", "__.."};
    }

    public string toMorseCode(string p)
    { //brush up on pass by reference/value for c fam languges
      string morsePhrase = "";
      for( int i = 0; i < p.Length; i++ )
      {
        switch (p[i])
        {
          case 'a':
            morsePhrase += morseCode[(int)characters.a];
            break;
          case 'b':
            morsePhrase += morseCode[(int)characters.b];
            break;
          case 'c':
            morsePhrase += morseCode[(int)characters.c];
            break;
          case 'd':
            morsePhrase += morseCode[(int)characters.d];
            break;
          case 'e':
            morsePhrase += morseCode[(int)characters.e];
            break;
          case 'f':
            morsePhrase += morseCode[(int)characters.f];
            break;
          case 'g':
            morsePhrase += morseCode[(int)characters.g];
            break;
          case 'h':
            morsePhrase += morseCode[(int)characters.h];
            break;
          case 'i':
            morsePhrase += morseCode[(int)characters.i];
            break;
          case 'j':
            morsePhrase += morseCode[(int)characters.j];
            break;
          case 'k':
            morsePhrase += morseCode[(int)characters.k];
            break;
          case 'l':
            morsePhrase += morseCode[(int)characters.l];
            break;
          case 'm':
            morsePhrase += morseCode[(int)characters.m];
            break;
          case 'n':
            morsePhrase += morseCode[(int)characters.n];
            break;
          case 'o':
            morsePhrase += morseCode[(int)characters.o];
            break;
          case 'p':
            morsePhrase += morseCode[(int)characters.p];
            break;
          case 'q':
            morsePhrase += morseCode[(int)characters.q];
            break;
          case 'r':
            morsePhrase += morseCode[(int)characters.r];
            break;
          case 's':
            morsePhrase += morseCode[(int)characters.s];
            break;
          case 't':
            morsePhrase += morseCode[(int)characters.t];
            break;
          case 'u':
            morsePhrase += morseCode[(int)characters.u];
            break;
          case 'v':
            morsePhrase += morseCode[(int)characters.v];
            break;
          case 'w':
            morsePhrase += morseCode[(int)characters.w];
            break;
          case 'x':
            morsePhrase += morseCode[(int)characters.x];
            break;
          case 'y':
            morsePhrase += morseCode[(int)characters.y];
            break;
          case 'z':
            morsePhrase += morseCode[(int)characters.z];
            break;
          case ' ':
            morsePhrase += "/";
            break;
          default:
            break; //make it user-proof
        } //end switch
      } //end for-loop
      return morsePhrase;
    } // end toMorseCode
    private static string[] morseCode;
  } // end class MorseCodeTranslator
} // end namespace Translator
