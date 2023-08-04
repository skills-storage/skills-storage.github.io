package com.skillsimprover.notepad.runner;

import java.io.IOException;

public class NotepadRunner {

	public static void main(String[] args) throws IOException {
		Runtime.getRuntime().exec("notepad.exe");
	}
}
