using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Customer
{	
    public int CustomerID {get; set;}
    public string LastName { get; set; }
    public string FirstName { get; set; }
    public string Address { get; set; }
    public string City { get; set; }
    public string State { get; set; }
    public int Zip { get; set; }
    public string Phone { get; set; }
    public string Email { get; set; }
    public bool newProducts { get; set; }
    public bool discounts { get; set; }
    public bool artFairs { get; set; }
    public bool specialOffers { get; set; }
    public string cardNumber { get; set; }
    public string expDate { get; set; }
    public string secNumber { get; set; }
}