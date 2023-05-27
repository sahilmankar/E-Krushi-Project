namespace OrderProcessingService.Models;

public class OrderDetails{

    public int Id{get; set;}

    public int OrderId{get; set;}

    public int ProductId{get; set;}

    public int Quantity{get; set;}

    public double Discount{get; set;}
}