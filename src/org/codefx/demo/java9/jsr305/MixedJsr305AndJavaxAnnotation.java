package org.codefx.demo.java9.jsr305;

import javax.annotation.Generated;
import javax.annotation.Nonnull;

@Generated("NIPA-TYPING")
public class MixedJsr305AndJavaxAnnotation {

	public static void main(String[] args) {
		System.out.println(message());
	}

	@Nonnull
	public static String message() {
		return "Hello, JSR 305 and javax.annotations";
	}

}
