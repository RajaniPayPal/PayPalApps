using System;
// Install-Package PayPalCheckoutSdk -Version 1.0.3
// Install-Package PayPalHttp -Version 1.0.0
using PayPalHttp;
using System.Threading.Tasks;
using System.Linq;
// Install-Package Newtonsoft.Json -Version 13.0.1
using Newtonsoft.Json;


class Program
{
    static async Task Main()
    {
        Task<HttpResponse> asyncTaskHttpResponseCreateOrder = Task.Run(() => CaptureOrderSample.createOrder());
        Console.WriteLine(asyncTaskHttpResponseCreateOrder.Id);
        Console.WriteLine(asyncTaskHttpResponseCreateOrder.Status);
        Console.WriteLine(asyncTaskHttpResponseCreateOrder.Result);

        Console.WriteLine("CreateOrder JSON");
        string jsonCreateOrder = JsonConvert.SerializeObject(asyncTaskHttpResponseCreateOrder);
        Console.WriteLine(jsonCreateOrder);

        // Task<HttpResponse> asyncTaskHttpResponsCaptureOrder = Task.Run(() => CaptureOrderSample.captureOrder());
        // Console.WriteLine(asyncTaskHttpResponsCaptureOrder.Id);
        // Console.WriteLine(asyncTaskHttpResponsCaptureOrder.Status);
        // Console.WriteLine(asyncTaskHttpResponsCaptureOrder.Result);

        // Console.WriteLine("CaptureOrder JSON");
        // string jsonCaptureOrder = JsonConvert.SerializeObject(asyncTaskHttpResponsCaptureOrder);
        // Console.WriteLine(jsonCaptureOrder);

        Task taskAsync = Task.Run(() => Enumerable.Range(1, new Random().Next(100)).Count(x => x % 2 == 0));
        // Task taskAsync =  Task.Run(() => Thread.Sleep(1000)); // Task taskAsync = Task.Run(() => Task.Delay(1000));
        Console.WriteLine(taskAsync.IsCompleted);
        await taskAsync;
        Console.WriteLine(taskAsync.IsCompleted);
    }
}
