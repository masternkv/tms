package com.tms.test;

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

public class TestRunner {
	public static void  name(String args[]) {
		
	Result resultTest=JUnitCore.runClasses(TestSuite.class)	;
	for(Failure faliure:resultTest.getFailures())
	{
		System.out.println(faliure.toString());
	}
	System.out.println(resultTest.wasSuccessful());
	}

}
