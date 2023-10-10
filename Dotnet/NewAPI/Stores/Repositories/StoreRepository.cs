using System.Data;
using System.Text;
using System.Text.Json;
using Dapper;
using MySql.Data.MySqlClient;
using TransFlower.EKrushi.Stores.Models;
using TransFlower.EKrushi.Stores.Repositories.Interfaces;

namespace TransFlower.EKrushi.Stores.Repositories;

public class StoreRepository : IStoreRepository
{
    private readonly IConfiguration _configuration;
    private readonly string _connectionString;
    private readonly IHttpClientFactory _httpClientFactory;

    public StoreRepository(IConfiguration configuration, IHttpClientFactory httpClientFactory)
    {
        _configuration = configuration;
        _httpClientFactory = httpClientFactory;

        _connectionString =
            this._configuration.GetConnectionString("DefaultConnection")
            ?? throw new ArgumentNullException("connection Sting Not Found");
    }

    public async Task<IEnumerable<StoreOrder>> GetStoreOrders(int storeId, string orderStatus)
    {
        MySqlConnection connection = new MySqlConnection(_connectionString);
        try
        {
            await connection.OpenAsync();
            string query =
                "SELECT id, orderdate, shippeddate,total, status FROM orders where storeid=@StoreId and status=@OrderStatus";

            return await connection.QueryAsync<StoreOrder>(
                query,
                new { StoreId = storeId, OrderStatus = orderStatus }
            );
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            await connection.CloseAsync();
        }
    }

    public async Task<OrderStatusCount> GetStoreOrdersCount(int storeId)
    {
        MySqlConnection connection = new MySqlConnection(_connectionString);
        try
        {
            await connection.OpenAsync();
            string query =
                @"SELECT
        SUM(CASE WHEN status = 'pending' THEN 1 ELSE 0 END) AS pending,
        SUM(CASE WHEN status = 'approved' THEN 1 ELSE 0 END) AS approved,
        SUM(CASE WHEN status = 'ready to dispatch' THEN 1 ELSE 0 END) AS readytodispatch,
        SUM(CASE WHEN status = 'picked' THEN 1 ELSE 0 END) AS picked,
        SUM(CASE WHEN status = 'in progress' THEN 1 ELSE 0 END) AS inprogress,
        SUM(CASE WHEN status = 'delivered' THEN 1 ELSE 0 END) AS delivered,
        SUM(CASE WHEN status = 'cancelled' THEN 1 ELSE 0 END) AS cancelled
    FROM orders WHERE storeid = @StoreId";
            return await connection.QueryFirstAsync<OrderStatusCount>(
                query,
                new { StoreId = storeId }
            );
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            await connection.CloseAsync();
        }
    }

    public async Task<int> GetNearestStoreId(int customerAddressId)
    {
        MySqlConnection connection = new MySqlConnection(_connectionString);
        try
        {
            int addressId = await GetNearestStoreAddressId(customerAddressId);

            if (addressId == default)
            {
                return default;
            }

            var query = "SELECT Id FROM Stores WHERE addressid = @AddressId";
            connection.Open();

            var storeId = await connection.ExecuteScalarAsync<int>(
                query,
                new { AddressId = addressId }
            );

            return storeId;
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            await connection.CloseAsync();
        }
    }

    public async Task<int> GetStoreUserId(int storeId)
    {
        MySqlConnection connection = new MySqlConnection(_connectionString);
        try
        {
            var query = "SELECT userid FROM stores WHERE id = @StoreId";
            connection.Open();

            var userId = await connection.ExecuteScalarAsync<int>(query, new { StoreId = storeId });

            return userId;
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            await connection.CloseAsync();
        }
    }

    private async Task<int> GetNearestStoreAddressId(int customerAddressId)
    {
        try
        {
            string addressIdsAsString = await GetAddressIdOfStores();
            var body = new { addressId = customerAddressId, addressIdString = addressIdsAsString };
            string jsonBody = JsonSerializer.Serialize(body);
            var requestContent = new StringContent(jsonBody, Encoding.UTF8, "application/json");
            string requestUrl = "http://localhost:5102/api/addresses/nearest";

            HttpClient httpClient = _httpClientFactory.CreateClient();
            var response = await httpClient.PostAsync(requestUrl, requestContent);
            if (response.IsSuccessStatusCode)
            {
                var apiResponse = await response.Content.ReadAsStringAsync();
                int addressId = JsonSerializer.Deserialize<int>(apiResponse);
                return addressId;
            }
        }
        catch (Exception)
        {
            throw;
        }
        return default;
    }

    private async Task<string> GetAddressIdOfStores()
    {
        MySqlConnection connection = new MySqlConnection(_connectionString);
        try
        {
            await connection.OpenAsync();
            return await connection.QueryFirstAsync<string>(
                @"SELECT GROUP_CONCAT(addressid) AS ConcatenatedAddressIds FROM Stores"
            );
        }
        catch (Exception)
        {
            throw;
        }
    }

    public async Task<int> GetStoreIdByUserId(int userId)
    {
        MySqlConnection connection = new MySqlConnection(_connectionString);
        try
        {
            var query = "SELECT id FROM stores WHERE userid = @UserId";
            connection.Open();

            var storeId = await connection.ExecuteScalarAsync<int>(query, new { UserId = userId });
            return storeId;
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            await connection.CloseAsync();
        }
    }

    public async Task<StoreName> GetStoreNameByStoreId(int storeId)
    {
        MySqlConnection connection = new MySqlConnection(_connectionString);
        try
        {
            var query = "SELECT name FROM stores WHERE id = @StoreId";
            connection.Open();

            var storeName = await connection.QueryFirstOrDefaultAsync<StoreName>(
                query,
                new { StoreId = storeId }
            );
            return storeName;
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            await connection.CloseAsync();
        }
    }
}
