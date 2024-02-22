<?php
namespace Tests\Feature;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Product;

class ProductTest extends TestCase
{
    use RefreshDatabase;

    public function test_can_create_product()
    {
        // Arrange
        $productData = [
            'name' => 'Producto de pa',
            'category_id' => 2,
            'price' => 100,
            'seller_id' => 1,
            'location_id' => 48,
            'image' => 'https://ejemplo.com/imagen.jpg',
            'description' => 'Descripción del producto',
        ];

        // Act
        $response = $this->post('/api/products', $productData);

        // Assert
        $response->assertStatus(302);
        $this->assertDatabaseHas('products', $productData);
      
    }
}
