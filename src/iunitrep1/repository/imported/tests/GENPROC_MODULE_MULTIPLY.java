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
public class GENPROC_MODULE_MULTIPLY {

	static String inputXMLFilePath = "testcases/iunitrep1.repository.imported.tests/GENPROC_MODULE_MULTIPLY.xml";
	String input;
	String expectedResult;
	String compareJson;
	int index;
	boolean isFailureAssertion = false;
	boolean isErrorAssertion = false;

	public GENPROC_MODULE_MULTIPLY(String input, String expectedResult, String compareJson, String index) {
		this.input = input;
		this.expectedResult = expectedResult;
		this.compareJson = compareJson;
		this.index = Integer.parseInt(index);
	}

	@Parameters
	public static Collection<String[]> testData() {
		return IUnitXMLParser.getParameters("resources/iunitrep1.repository.imported.tests/GENPROC_MODULE_MULTIPLY");
	}

	@Test
	public void test() throws Exception {
		ResourceManager manager = new ResourceManager(this.getClass().getName(), inputXMLFilePath);
		if (!manager.isValidConnection()) {
			System.err.print(manager.getErrorMessage());
			throw new Exception(manager.getErrorMessage());
		} else {
			String actualResult = manager.getActualResult(inputXMLFilePath, this.getClass().getName(), input,
					expectedResult, compareJson, index);
			manager.processActualResult(actualResult, expectedResult, compareJson, isFailureAssertion,
					isErrorAssertion);
			if (manager.getMessage() != null && !manager.getMessage().isEmpty()) {
				throw new Exception(manager.getMessage());
			}
			if (!manager.isPass()) {
				System.out.print("Test Case Status : Failure ");
				System.out.println("(for more details, right click on test node and choose iUnit -> show result).");
				throw new AssertionError(manager.getTraceMessage());
			}
		}

	}
}