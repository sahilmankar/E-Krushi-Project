namespace OrderProcessingService.Models;

public class OrderHistory{

    public string? Title{get; set;}

    public string? Image{get; set;}

    public int UnitPrice{get; set;}

    public DateTime OrderDate{get; set;}

    public DateTime ShippedDate{get; set;}

    public int CustomerId{get; set;}
   
    public double Total{get; set;}

    public string? Status{get; set;}

    public int Quantity{get; set;}


}
