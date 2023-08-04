package com.skillsimprover.questionnaire.utils;

public final class VersionUtils {

	private VersionUtils() {
		throw new AssertionError("Class with static methods only should not be instanciated!");
	}

	public static String getQuestionnaireVersion() {
		return "Version-1.0";
	}
}
