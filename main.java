import java.util.Scanner; import java.io.File; 
import java.io.FileNotFoundException; 
import java.util.ArrayList;
public class main {
	public static void main(String[] args) throws 
FileNotFoundException {
		Scanner file_input = new Scanner(new 
File("/tmp/wejsce.txt"));
		String word;
		String[] lista = new String[20];

		while (file_input.hasNextLine()) {
			word=file_input.nextLine();
			generator(word);
		}
		file_input.close();
	}//main
	
        private static void generator(String word) {
//              String[] lista = new String[20];
                ArrayList<String> lista = new ArrayList<String>();
		try {
                lista.add(word.replaceAll("a", "4"));
                lista.add(word.toUpperCase());
                lista.add(word.toLowerCase());
                lista.add(word.replaceAll("e", "3"));
                lista.add(word.replaceAll("i", "1"));
                lista.add(word.replaceAll("u", "oo"));
                lista.add(word.replaceAll("o", "0"));
                lista.add(mixCaseReg(word));
                lista.add(mixCaseGuf(word));
                lista.add(word.replaceAll("a", "4"));
                lista.add(word.replaceAll("1", "!"));
		lista.add(word.replaceAll("2", "@"));
                lista.add(word.replaceAll("3", "#"));
                lista.add(word.replaceAll("4", "$"));
                lista.add(word.replaceAll("5", "%"));
                lista.add(word.replaceAll("6", "^"));
                lista.add(word.replaceAll("7", "&"));
                lista.add(word.replaceAll("8", "*"));
                lista.add(word.replaceAll("9", "("));
                lista.add(word.replaceAll("10", ")"));
		}
		catch (java.lang.StringIndexOutOfBoundsException e) {
			System.out.println(e.getMessage());
		}

                for (int i =0; i < lista.size(); i++) {
                        System.out.println(lista.get(i));
                }
        } //generator	
	private static String leet(String word, boolean choice) {
		if (choice) {
			return mixCaseReg(word);
		}
		else {
			return mixCaseGuf(word);
		}
	} //leet
	private static String mixCaseReg(String word) {
		char[] tab = new char[word.length()];
		for (int i=0;i<word.length() && word.length() != 0;i++) 
{
			if (i%2 == 0) {
				tab[i] = (word.toLowerCase()).charAt(i);
			}
			else {
				tab[i] = (word.toUpperCase()).charAt(i);
			}
		}
		String b = new String(tab);
		return b;
	}
	
	
	private static String mixCaseGuf(String word) {
		char[] tab = new char[word.length()];
		for (int i=0;i<word.length();i++) {
			if (i%2 == 0) {
				tab[i] = (word.toUpperCase()).charAt(i);
			}
			else {
				tab[i] = (word.toLowerCase()).charAt(i);
			}
		}
		String b = new String(tab);
		return b;
	}
}
