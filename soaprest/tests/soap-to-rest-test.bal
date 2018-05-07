import ballerina/test;
import ballerina/http;
import ballerina/system;

@test:BeforeSuite
function beforeFunc() {
    _ = test:startServices("soaprest");
}

// Client endpoint
endpoint http:Client clientEP {
    url:"http://localhost:9090/"
};


@test:Config
function testSOAPREST () {
    // Initialize empty http request
    http:Request req;

    // Test the 'updatePrice' resource
    // Construct a request payload
    json payload = {
    	cardNumber: 4544950403088999,
    	postcode: "31244",
    	month: 5,
    	year: 15,
    	cvc: 999,
    	merchant: "MERCH",
    	reference: system:uuid()
    };

    req.setJsonPayload(payload);
    // Send a 'post' request and obtain the response
    http:Response response = check clientEP -> post("/", request = req);
    // Expected response code is 200
    test:assertEquals(response.statusCode, 200,
        msg = "product admin service did not respond with 200 OK signal!");
    // Check whether the response is as expected
    json resPayload = check response.getJsonPayload();
}

@test:AfterSuite
function afterFunc() {
    test:stopServices("soaprest");
}
