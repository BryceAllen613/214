/* An application for translating morse code when the user enters a phrase.
 * Final Project for CS 214 @ Calvin College
 * By: Bryce Allen
 * 5/15/18
 * */

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Final_Project
{
    /* Main program / driver class
     * 
     * 
     **/
    static class Program
    {
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new OpenerGui());
        }
    } // end Program
    public class OpenerGui : Form
    {
        TextBox textbox1 = new TextBox();
        /* default constructor for building a basic gui  * */
        public OpenerGui()
        {
            InitializeComponent();
        }

        /* Initializes the GUI
         * adds a 'press' enter feature which will translate the phrase when user hits enter.
         * */
        public void InitializeComponent()
        {
            this.Size = new Size(400, 100);
            textbox1.Location = new Point(10, 10);
            textbox1.Height = 40;
            textbox1.Width = 300;

            Controls.Add(textbox1);

            textbox1.KeyDown += new KeyEventHandler(textbox1_KeyDown);
        }
        /* method that is executed when the textbox event handler sees that the user hit enter
         * at the pressing of enter, the method makes a MorseCodeTranslator object to translate the phrase.
         * */
        void textbox1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                MorseCodeTranslator mct = new MorseCodeTranslator();
                string textBox1Contents = textbox1.Text;
                string translation = mct.toMorseCode(textBox1Contents);
                MessageBox.Show(translation);
            }
        }
    } // end OpenerGui

    /* Type for decoding regular string of characters into morse code. 
     * */
    public class MorseCodeTranslator
    {
        //Enum, for easy access to alphanumeric translation.
        enum characters
        {
            a, b, c, d, e,
            f, g, h, i, j,
            k, l, m, n, o,
            p, q, r, s, t,
            u, v, w, x, y, z
        }
        /* Default constructor
         * defines an array of morse code letters
         * */
        public MorseCodeTranslator()
        {
            morseCode = new string[]{"._", "_...", "_._.", "_..", ".",".._.",
                              "__.", "....", "..", ".___", "_._", "._..",
                              "__", "_.", "___", ".__.", "__._", "._.",
                              "...", "_", ".._", "..._", ".__", "_.._",
                              "_.__", "__.."};
        }

        /* translates a phrase into morse code.
         * param: p, the phrase to be translated.
         * return: a translated phrase.
         * */
        public string toMorseCode(string p)
        {
            string morsePhrase = "";
            for (int i = 0; i < p.Length; i++)
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
                    case 'A':
                        morsePhrase += morseCode[(int)characters.a];
                        break;
                    case 'B':
                        morsePhrase += morseCode[(int)characters.b];
                        break;
                    case 'C':
                        morsePhrase += morseCode[(int)characters.c];
                        break;
                    case 'D':
                        morsePhrase += morseCode[(int)characters.d];
                        break;
                    case 'E':
                        morsePhrase += morseCode[(int)characters.e];
                        break;
                    case 'F':
                        morsePhrase += morseCode[(int)characters.f];
                        break;
                    case 'G':
                        morsePhrase += morseCode[(int)characters.g];
                        break;
                    case 'H':
                        morsePhrase += morseCode[(int)characters.h];
                        break;
                    case 'I':
                        morsePhrase += morseCode[(int)characters.i];
                        break;
                    case 'J':
                        morsePhrase += morseCode[(int)characters.j];
                        break;
                    case 'K':
                        morsePhrase += morseCode[(int)characters.k];
                        break;
                    case 'L':
                        morsePhrase += morseCode[(int)characters.l];
                        break;
                    case 'M':
                        morsePhrase += morseCode[(int)characters.m];
                        break;
                    case 'N':
                        morsePhrase += morseCode[(int)characters.n];
                        break;
                    case 'O':
                        morsePhrase += morseCode[(int)characters.o];
                        break;
                    case 'P':
                        morsePhrase += morseCode[(int)characters.p];
                        break;
                    case 'Q':
                        morsePhrase += morseCode[(int)characters.q];
                        break;
                    case 'R':
                        morsePhrase += morseCode[(int)characters.r];
                        break;
                    case 'S':
                        morsePhrase += morseCode[(int)characters.s];
                        break;
                    case 'T':
                        morsePhrase += morseCode[(int)characters.t];
                        break;
                    case 'U':
                        morsePhrase += morseCode[(int)characters.u];
                        break;
                    case 'V':
                        morsePhrase += morseCode[(int)characters.v];
                        break;
                    case 'W':
                        morsePhrase += morseCode[(int)characters.w];
                        break;
                    case 'X':
                        morsePhrase += morseCode[(int)characters.x];
                        break;
                    case 'Y':
                        morsePhrase += morseCode[(int)characters.y];
                        break;
                    case 'Z':
                        morsePhrase += morseCode[(int)characters.z];
                        break;
                    case ' ':
                        morsePhrase += " ";
                        break;
                    default:
                        break; //make it user-proof
                } //end switch
            } //end for-loop
            return morsePhrase;
        } // end toMorseCode
        private static string[] morseCode;
    } // end class MorseCodeTranslator
} // end Final_Project
