package java_zavrsni;

import java.util.Scanner;

public class Pomocno {
	
	public static Scanner ulaz;

	public static int unosRasponBroja(String poruka, String greska, int min, int max) {
		int i;
		while(true) {
			try {
				System.out.print(poruka);
				i = Integer.parseInt(ulaz.nextLine());
				if(i>=min && i<= max) {
					return i;
				}
				System.out.println(greska);
			} catch (Exception e) {
				System.out.println(greska);
			}
		}
		
	}

	public static String unosString(String poruka, String greska) {
		String s = "";
		while(true) {
			System.out.print(poruka);
			s = ulaz.nextLine();
			if(s.trim().length()>0) {
				return s;
			}
			System.out.println(greska);
		}
		
	}
	

}
