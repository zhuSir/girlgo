package com.girlgo.cms.common;

import java.security.MessageDigest;

public class MD5 {
	public final static String parseMD5(String s) {
		if (s == null) {
			return null;
		}
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'a', 'b', 'c', 'd', 'e', 'f' };
		try {
			byte[] strTemp = s.getBytes();
			MessageDigest mdTemp = MessageDigest.getInstance("MD5");
			mdTemp.update(strTemp);
			byte[] md = mdTemp.digest();
			int j = md.length;
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {
				byte byte0 = md[i];
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];
				str[k++] = hexDigits[byte0 & 0xf];
			}
			return new String(str);
		} catch (Exception e) {
			return null;
		}
	}

	public static String sha1(String data) {
		MessageDigest md = null;
		try{
			md = MessageDigest.getInstance("SHA1");
		}catch (Exception e) {
			e.printStackTrace();
			return "";
		}
		md.update(data.getBytes());

		StringBuffer buf = new StringBuffer();

		byte[] bits = md.digest();

		for (int i = 0; i < bits.length; i++) {

			int a = bits[i];

			if (a < 0)
				a += 256;

			if (a < 16)
				buf.append("0");

			buf.append(Integer.toHexString(a));

		}

		return buf.toString();

	}	
	
}