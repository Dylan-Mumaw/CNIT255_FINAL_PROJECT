public class CartItem
{
    public CartItem() { }

    public CartItem(Product product, int quantity)
    {
        this.Product = product;
        this.Quantity = quantity;
    }

    public Product Product { get; set; }
    public int Quantity { get; set; }

    public void AddQuantity(int quantity)
    {
        this.Quantity += quantity;
    }

    /*public int TotalUnitPrice(int total, decimal price)
    {
        Product.UnitPrice = price;
        Quantity * price = total;
        return total;
    }*/

    public string Display()
    {
        decimal total = Product.UnitPrice * Quantity;

        decimal productTotal = 0;
        productTotal += total;

        string totalString = total.ToString("c");
        string displayString =
            Product.Name + " " + Quantity.ToString()
            + " at " + Product.UnitPrice.ToString("c") + " each = " + totalString;
             //+ productTotal.ToString("c");
        
        return displayString;
    }


    public int Count { get; set; }
}