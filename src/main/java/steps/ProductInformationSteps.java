package steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import entities.Product;

import java.util.ArrayList;
import java.util.Comparator;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static pages.ProductInformationPage.*;

public class ProductInformationSteps {

    private static ArrayList<Product> products = new ArrayList<>();

    @And("^save information about product$")
    public void saveInformationAboutProduct() throws Throwable {
        Product product = new Product(productName.getText());
        product.setCode(productCode.getText());
        product.setPrice(productPrice.getText());
        product.setQuantity(productQuantity.getText());
        product.setQuantityToBuy(1);
        if (productSize.exists())
            product.setSize(productSize.getText());

        if (products.isEmpty())
            products.add(product);
        else {
            if(!isInCartAndIncreaseIfInIt(products, product))
            {
                products.add(product);
            }
        }
        products.sort(Comparator.comparing(Product::getPrice).reversed());

    }

    private static Boolean isInCartAndIncreaseIfInIt(ArrayList<Product> products, Product product) {
        for (Product pr : products)
            if (pr.getCode().equals(product.getCode())
                    && pr.getSize().equals(product.getSize())) {
                pr.increaseQuantityToBuy();
                return true;
            }
        return false;
    }

    public static ArrayList<Product> getProducts() {
        return products;
    }

    @Then("^check that common count of product degrees$")
    public void checkThatCommonCountOfProductDegrees() throws Throwable {
        ArrayList g = getProducts();
        int r = getProducts().get(0).getQuantity() - 1;
        int h = Integer.parseInt(productQuantity.getText().substring(0, productQuantity.getText().indexOf(" ")));
        assertTrue(getProducts().get(0).getQuantity() - 1 ==
                        Integer.parseInt(productQuantity.getText().substring(0, productQuantity.getText().indexOf(" "))),
                "Общее количество продукта не уменьшается");
    }
}
