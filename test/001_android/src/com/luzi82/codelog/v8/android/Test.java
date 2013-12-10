package com.luzi82.codelog.v8.android;

public class Test {

	static {
        System.loadLibrary("code.v8.test");
	}

	public static native void test(byte[] ba,int[] size);

}
