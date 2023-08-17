package com.skillsimprover.utils;

public final class StringUtils {

	public static final String EMPTY_STR = "";

	private StringUtils() {
		throw new AssertionError("There are only static methods in this class! No need to create an instance of it!");
	}

	public static boolean isEmpty(String str) {
        if (str != null) {
            return EMPTY_STR.equals(str);
        }

        return true;
	}

	public static boolean isNotEmpty(String str) {
		return !isEmpty(str);
	}

	public static boolean isBlank(String str) {
        if (isNotEmpty(str)) {
            return EMPTY_STR.equals(str.trim());
        }

        return true;
	}

	public static boolean isNotBlank(String str) {
        return !isBlank(str);
	}
}
