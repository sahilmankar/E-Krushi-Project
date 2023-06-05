using CatlogService.Models;
using CatlogService.Service.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace CatlogService.Controllers;

[ApiController]
[Route("api/[controller]")]
public class CatalogsController : ControllerBase
{
    private readonly ICatalogService _service;

    public CatalogsController(ICatalogService service)
    {
        _service = service;
    }

  //this  method is used for get all categories.
    [HttpGet]
    [Route("Categories")]
    public async Task<IEnumerable<Category>> GetAllCategories()
    {
        List<Category> categories = await _service.GetAllCategories();
        return categories;
    }


   //this method gives category by id.
    [HttpGet]
    [Route("Categories/{id}")]
    public async Task<Category> GetCategory(int id)
    {
        Category category = await _service.GetCategory(id);
        return category;
    }

    [HttpPost]
    [Route("Insert")]
    public async Task<bool> Insert([FromBody] Category category)
    {
        bool result =  await _service.Insert(category);
        return result;
    }




   //this method is used for update category
    [HttpPut]
    [Route("Update")]
    public async Task<bool> Update([FromBody] Category category)
    {
        bool result =await  _service.Update(category);
        return result;
    }
    


    //this method is used for delete category
    [HttpDelete]
    [Route("Delete/{id}")]
    public async Task<bool> Delete(int id)
    {
        bool result =await  _service.Delete(id);
        return result;
    }



    [HttpGet]
    [Route("products")]
    public async Task<List<Product>> GetAllProducts()
    {
        List<Product> products = await _service.GetAllProducts();
        return products;
    }

    [HttpGet]
    [Route("products/{id}")]
    public async Task<Product> GetProduct(int id)
    {
        Product product = await _service.GetProduct(id);
        return product;
    }

    [HttpPost]
    [Route("Insert/product")]

    public async Task<bool> Insert([FromBody] Product product)
    {
        bool result = await _service.Insert(product);
        return result;
    }
    
    [HttpPut]
    [Route("Update/{id}")]

    public async Task<bool> Update(int id, [FromBody] Product product)
    {
        Product oldProduct = await _service.GetProduct(id);
        if(oldProduct.Id==0){
            return false;
        }
        product.Id = id;
        bool result = await _service.Update(product);
        return result;
    }

    [HttpDelete]
    [Route("Delete/{id}")]

    public async Task<bool> DeleteProduct(int id)
    {
        bool result = await _service.DeleteProduct(id);
        return result;
    }

    [HttpGet]
    [Route("products/category/{categoryName}")]
    public async Task<List<Products>> GetProductsDetails(string categoryName)
    {
        List<Products> products = await _service.GetProductsDetails(categoryName);
        
        return products;
    }


}    