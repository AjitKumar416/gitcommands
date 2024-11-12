package iunitrep1.repository.imported.tests;

import java.util.Collection;
import org.junit.*;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;
import org.skyscreamer.jsonassert.JSONAssert;
import com.arcadsoftware.iunit.junit.xml.IUnitXMLParser;
import com.arcadsoftware.iunit.junit.model.Configuration;
import com.arcadsoftware.iunit.junit.model.ResourceManager;

@RunWith(value = Parameterized.class)
public class DBMOCK_PGM_MAIN {

	static String inputXMLFilePath = "testcases/iunitrep1.repository.imported.tests/DBMOCK_PGM_MAIN.xml";
	String input;
	String expectedResult;
	String compareJson;
	int index;
	boolean isFailureAssertion = false;
	boolean isErrorAssertion = false;

	public DBMOCK_PGM_MAIN(String input, String expectedResult, String compareJson, String index) {
		this.input = input;
		this.expectedResult = expectedResult;
		this.compareJson = compareJson;
		this.index = Integer.parseInt(index);
	}

	@Parameters
	public static Collection<String[]> testData() {
		return IUnitXMLParser.getParameters("resources/iunitrep1.repository.imported.tests/DBMOCK_PGM_MAIN");
	}
}