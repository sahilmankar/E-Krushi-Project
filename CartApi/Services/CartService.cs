using ShoppingCartService.Models;
using ShoppingCartService.Repositories.Interfaces;
using ShoppingCartService.Services.Interfaces;

namespace ShoppingCartService.Services;
public class CartService : ICartService
{
    private readonly ICartRepository _repo;
    public CartService(ICartRepository repo)
    {
        this._repo = repo;
    }

    public async Task<List<Item>> GetAll(int id)
    {
        return await _repo.GetAll(id);
    }

    public async Task<bool> AddItem( Item item)
    {
        return await _repo.AddItem( item);
    }

    public async Task<Cart> GetCart(int id)
    {
        return await _repo.GetCart(id);
    }
}