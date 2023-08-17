package com.skillsimprover.utils;

import javax.servlet.http.HttpServletRequest;

public final class HttpUtils {

	private HttpUtils() {
		throw new AssertionError("There are only static methods in this class! No need to create an instance of it!");
	}

	public static Integer getIntParam(HttpServletRequest request, String paramName) {
		if (request == null) {
			throw new IllegalArgumentException("request can not be NULL!");
		}

		if (StringUtils.isBlank(paramName)) {
			throw new IllegalArgumentException("parameter name should not be blank!");
		}

		String intValueStr = request.getParameter(paramName);
		try {
			return new Integer(intValueStr);
		}catch (Exception e) {
			return null;
		}
	}
}
