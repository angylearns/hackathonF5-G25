<?php
namespace Tests\Feature;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Product;
    
class ProductControllerTest extends TestCase
{
        use RefreshDatabase;
    
        /** @test */
        public function index_method_returns_users()
        {
            // Arrange
            $users = User::factory()->count(5)->create();
    
            // Act
            $response = $this->get('/users');
    
            // Assert
            $response->assertStatus(200);
            $response->assertJson($users->toArray());
        }
    
}
