using OrderProcessingService.Models;
using OrderProcessingService.Repositories.Interfaces;
using MySql.Data.MySqlClient;
using System.Globalization;

namespace OrderProcessingService.Repositories;
public class OrderRepository : IOrderRepository
{
    public static string conString = "server=localhost; user=root; port=3306; password=Password; database=E_Krushi";
    public List<Order> GetAllOrders()
    {
        List<Order> orders = new List<Order>();
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = conString;
        try
        {
            string query = "SELECT * FROM orders";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            MySqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                int id = int.Parse(reader["order_id"].ToString());
                DateTime orderDate = DateTime.Parse(reader["order_date"].ToString());
                DateTime shippedDate = DateTime.Parse(reader["shipped_date"].ToString());
                int customerId = int.Parse(reader["cust_id"].ToString());
                double total = double.Parse(reader["total"].ToString());
                string? status = reader["status"].ToString();

                Order order = new Order()
                {
                    OrderId = id,
                    OrderDate = orderDate,
                    ShippedDate = shippedDate,
                    CustomerId = customerId,
                    Total = total,
                    Status = status
                };

                orders.Add(order);
            }
            reader.Close();
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return orders;
    }

    public Order GetOrder(int id)
    {
        Order order = new Order();
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = conString;
        try
        {
            string query = "SELECT * FROM orders where order_id=@orderId";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            command.Parameters.AddWithValue("@orderId",id);
            MySqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                //int orderId = int.Parse(reader["order_id"].ToString());
                DateTime orderDate = DateTime.Parse(reader["order_date"].ToString());
                DateTime shippedDate = DateTime.Parse(reader["shipped_date"].ToString());
                int customerId = int.Parse(reader["cust_Id"].ToString());
                double total = double.Parse(reader["total"].ToString());
                string? status = reader["status"].ToString();

                order = new Order()
                {
                    OrderId = id,
                    OrderDate = orderDate,
                    ShippedDate = shippedDate,
                    CustomerId = customerId,
                    Total = total,
                    Status = status
                };
            }
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return order;
    }

    

   
    public Order GetOrderByCustId(int id)
    {
        Order order = new Order();
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = conString;
        try
        {
            string query = "SELECT * FROM orders where cust_id=@customerId";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            command.Parameters.AddWithValue("@customerId",id);
            MySqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                int orderId = int.Parse(reader["order_id"].ToString());
                DateTime orderDate = DateTime.Parse(reader["order_date"].ToString());
                DateTime shippedDate = DateTime.Parse(reader["shipped_date"].ToString());
                double total = double.Parse(reader["total"].ToString());
                string? status = reader["status"].ToString();

                order = new Order()
                {
                    OrderId = orderId,
                    CustomerId = id,
                    OrderDate = orderDate,
                    ShippedDate = shippedDate,
                    Total = total,
                    Status = status
                };
            }
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return order;
    }
    public bool InsertOrder(Order order)
    {
        bool status = false;
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = conString;
        try
        {
            string query = "INSERT INTO orders(order_date,shipped_date,cust_id,total,status)VALUES(@orderDate,@shippedDate,@customerId,@total,@status)";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            command.Parameters.AddWithValue("@orderDate",order.OrderDate);
            command.Parameters.AddWithValue("@shippedDate",order.ShippedDate);
            command.Parameters.AddWithValue("@customerId",order.CustomerId);
            command.Parameters.AddWithValue("@total",order.Total);
            command.Parameters.AddWithValue("@status",order.Status);
            int rowsAffected =command.ExecuteNonQuery();
            if(rowsAffected > 0){
            status = true;
            }
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return status;
    }

    public bool UpdateOrder(Order order)
    {
        bool status = false;
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = conString;
        try
        {
            string query = "Update orders set order_date=@orderDate, shipped_date=@shippedDate,cust_id=@customerId, total =@total, status =@status Where order_id =@orderId";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            command.Parameters.AddWithValue("@orderId",order.OrderId);
            command.Parameters.AddWithValue("@orderDate",order.OrderDate);
            command.Parameters.AddWithValue("@shippedDate",order.ShippedDate);
            command.Parameters.AddWithValue("@customerId",order.CustomerId);
            command.Parameters.AddWithValue("@total",order.Total);
            command.Parameters.AddWithValue("@status",order.Status);
            int rowsAffected =command.ExecuteNonQuery();
            if(rowsAffected > 0){
               status = true;
            }
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return status;
    }
    public bool DeleteOrder(int id)
    {
        bool status = false;
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = conString;
        try
        {
            string query = "DELETE FROM orders where order_id =@orderId";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            command.Parameters.AddWithValue("@orderId",id);
            int rowsAffected =command.ExecuteNonQuery();
            if(rowsAffected > 0){
                status = true;
            }
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return status;
    }

    public List<Order> GetAllCancelled()
    {
        List<Order> orders = new List<Order>();
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = conString;
        try
        {

            string query = " SELECT * FROM orders WHERE cust_id=1 and status='cancelled' ";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            MySqlDataReader reader = command.ExecuteReader();
            while ( reader.Read())
            {
                int id = int.Parse(reader["order_id"].ToString());
                DateTime orderDate = DateTime.Parse(reader["order_date"].ToString());
                DateTime shippedDate = DateTime.Parse(reader["shipped_date"].ToString());
                int customerId = int.Parse(reader["cust_id"].ToString());
                double total = double.Parse(reader["total"].ToString());
                string? status = reader["status"].ToString();

                Order order = new Order()
                {
                    OrderId = id,
                    OrderDate = orderDate,
                    ShippedDate = shippedDate,
                    CustomerId = customerId,
                    Total = total,
                    Status = status
                };

                orders.Add(order);
            }
            reader.Close();
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return orders;
    }


    public List<Order> GetAllDelivered()
    {
        List<Order> orders = new List<Order>();
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = conString;
        try
        {

            string query = " SELECT * FROM orders WHERE cust_id=1 and status='delivered' ";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            MySqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                int id = int.Parse(reader["order_id"].ToString());
                DateTime orderDate = DateTime.Parse(reader["order_date"].ToString());
                DateTime shippedDate = DateTime.Parse(reader["shipped_date"].ToString());
                int customerId = int.Parse(reader["cust_id"].ToString());
                double total = double.Parse(reader["total"].ToString());
                string? status = reader["status"].ToString();

                Order order = new Order()
                {
                    OrderId = id,
                    OrderDate = orderDate,
                    ShippedDate = shippedDate,
                    CustomerId = customerId,
                    Total = total,
                    Status = status
                };

                orders.Add(order);
            }
            reader.Close();
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return orders;
    }

    public  int GetCountByDate(DateTime date)
    {

        Int64 count=0;
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = conString;
        try
        {
            string query = "SELECT count(*) FROM orders where order_date < @date";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            command.Parameters.AddWithValue("@date",date);
             count = (Int64)command.ExecuteScalar();
            
           
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return (int)count;
    }
    public  int TotalCount()
    {

        Int64 count=0;
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = conString;
        try
        {
            string query = "SELECT count(*) FROM orders";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
             count = (Int64)command.ExecuteScalar();
            
           
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return (int)count;
    }
}