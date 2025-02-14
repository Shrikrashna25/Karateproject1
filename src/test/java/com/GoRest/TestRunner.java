package com.GoRest;


import com.intuit.karate.junit5.Karate;

public class TestRunner {

	
	@Karate.Test
	Karate getMethodForGoRest() {
		return Karate.run("TestCasesForGoRestGetMethod").relativeTo(getClass());
	}

	@Karate.Test
	Karate postMethodForGoRest() {
		return Karate.run("TestCasesForPostMEthod").relativeTo(getClass());
	}
	
	@Karate.Test
	Karate getMethodForReqres() {
		return Karate.run("TestCasesForGetMethod").relativeTo(getClass());
	}
	
	
	@Karate.Test
		Karate PostMethodForReqres() {
			return Karate.run("PostMethodForReqres").relativeTo(getClass());
		}
		



}
