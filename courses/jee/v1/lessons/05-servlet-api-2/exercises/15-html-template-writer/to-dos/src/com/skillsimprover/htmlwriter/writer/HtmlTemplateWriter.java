package com.skillsimprover.htmlwriter.writer;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

public class HtmlTemplateWriter {

	private List<String> htmlTemplate;

	public HtmlTemplateWriter(String htmlTemplatePath) {
		Path path = Paths.get(htmlTemplatePath);

		try {
			this.htmlTemplate = Files.readAllLines(path);
		} catch (IOException e) {
			throw new RuntimeException("Can not read template from the file path - " + htmlTemplatePath);
		}
	}

	public void writeTemplate(PrintWriter out) {
		for (String htmlLine : htmlTemplate) {
			out.println(htmlLine);
		}
	}
}
