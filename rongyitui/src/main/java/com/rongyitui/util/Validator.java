package com.rongyitui.util;

public class Validator {
	public static boolean isNullOrEmpty(String str) {
		return str == null || str.trim().length() == 0;
	}
}
