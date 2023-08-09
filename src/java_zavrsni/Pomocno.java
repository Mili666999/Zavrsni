package java_zavrsni;

import java.util.Scanner;

public class Pomocno {
	
	public static Scanner ulaz;
	public static boolean DEV;

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
	
	public static float unosFloat(String poruka, String greska) {
		while(true) {
			try {
				System.out.print(poruka);
				return Float.parseFloat(ulaz.nextLine());
			}catch (Exception e) {
				System.out.println(greska);
			}
		}
	}
	
	public static boolean unosBoolean(String poruka) {
		System.out.println(poruka);
		return ulaz.nextLine().trim().toLowerCase().equals("da") ? true : false;
	}
	

}
