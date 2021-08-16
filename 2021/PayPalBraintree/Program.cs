using System;
// Install-Package Braintree -Version 5.9.0
using Braintree;

class BraintreeAPI
{
    public BraintreeGateway Gateway()
    {
        var gateway = new BraintreeGateway
        {
            Environment = Braintree.Environment.SANDBOX,
            MerchantId = "****************",
            PublicKey = "****************",
            PrivateKey = "********************************"
        };

        return gateway;
    }

    public void ClientToken()
    {
        var gateway = Gateway();

        var clientToken = gateway.ClientToken.Generate();

        Console.WriteLine($"Client Token: {clientToken}");
    }

    public void ClientTokenCustomerId()
    {
        var gateway = Gateway();

        var aCustomerId = "BraintreeSanboxClient-0001";

        // Pass clientToken to your front-end
        var clientToken = gateway.ClientToken.Generate(
            new ClientTokenRequest
            {
                CustomerId = aCustomerId
            }
        );

        Console.WriteLine($"Client Token Customer Id: {clientToken}");
    }
}

class Program
{
    static void Main(string[] args)
    {
        BraintreeAPI apiIBraintree = new();
        apiIBraintree.ClientToken();

        // apiIBraintree.ClientTokenCustomerId();
    }
}

