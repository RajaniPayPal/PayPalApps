using System;
// Install-Package PayPalCheckoutSdk -Version 1.0.3
using PayPalCheckoutSdk.Core;
using PayPalCheckoutSdk.Orders;
// Install-Package PayPalHttp -Version 1.0.0
using PayPalHttp;
using System.Collections.Generic;
using System.Threading.Tasks;

public class CaptureOrderSample
{
    static string clientId = "********************************************************************************";
    static string secret = "********************************************************************************";
      
    public static HttpClient client()
    {
        // Creating a sandbox environment
        PayPalEnvironment environment = new SandboxEnvironment(clientId, secret);

        // Creating a client for the environment
        PayPalHttpClient client = new PayPalHttpClient(environment);
        return client;
    }

    public async static Task<HttpResponse> createOrder()
    {
        // System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("en-US");
        System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("en-IN");
        Console.WriteLine(System.Threading.Thread.CurrentThread.CurrentCulture.Name);

        HttpResponse response;
        
        // Construct a request object and set desired parameters
        // Here, OrdersCreateRequest() creates a POST request to /v2/checkout/orders
        var order = new OrderRequest()
        {           
            CheckoutPaymentIntent = "CAPTURE",
            PurchaseUnits = new List<PurchaseUnitRequest>()
            {
                new PurchaseUnitRequest()
                {
                    // Amount = new AmountWithBreakdown()
                    AmountWithBreakdown = new AmountWithBreakdown()
                    {
                        // CurrencyCode = "USD",
                        // Value = "1"
                        CurrencyCode = "INR",
                        Value = "1"                        
                    }                    
                }
            },
            ApplicationContext = new ApplicationContext()
            {
                ReturnUrl = "https://www.example.com",
                CancelUrl = "https://www.example.com",
                Locale = "en-IN"
            }            
        };


        // Call API with your client and get a response for your call
        var request = new OrdersCreateRequest();
        request.Prefer("return=representation");
        request.RequestBody(order);
        Console.WriteLine("Request");
        Console.WriteLine(request);
        response = await client().Execute(request);
        var statusCode = response.StatusCode;
        Order result = response.Result<Order>();
        Console.WriteLine("Status: {0}", result.Status);
        Console.WriteLine("Order Id: {0}", result.Id);

        // WIP
        // Console.WriteLine("Intent: {0}", result.Intent);

        Console.WriteLine("Links:");
        foreach (LinkDescription link in result.Links)
        {
            Console.WriteLine("\t{0}: {1}\tCall Type: {2}", link.Rel, link.Href, link.Method);
        }
        return response;
    }

    public async static Task<HttpResponse> captureOrder()
    {
        // Construct a request object and set desired parameters
        // Replace ORDER-ID with the approved order id from create order
        var request = new OrdersCaptureRequest("APPROVED-ORDER-ID");

        request.RequestBody(new OrderActionRequest());
        HttpResponse response = await client().Execute(request);
        var statusCode = response.StatusCode;
        Order result = response.Result<Order>();
        Console.WriteLine("Status: {0}", result.Status);
        Console.WriteLine("Capture Id: {0}", result.Id);
        return response;
    }
}
