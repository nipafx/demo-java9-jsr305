package org.codefx.demo.java9.jsr305;

import javax.annotation.Nonnull;

public class PureJsr305 {

	public static void main(String[] args) {
		System.out.println(message());
	}

	@Nonnull
	public static String message() {
		return "Hello, JSR 305";
	}

}
