package steps;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import entities.Product;
import org.openqa.selenium.By;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;

import static com.codeborne.selenide.Condition.disabled;
import static com.codeborne.selenide.Selenide.$;
import static pages.ProductInformationPage.*;

public class ProductInformationSteps {

    private static ArrayList<Product> products = new ArrayList<>();
    private Boolean isInCart = false;

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
}
