package entities;

import cucumber.api.java.eo.Do;

import java.util.logging.Logger;

public class Product {

    private final String productName;
    private Double price;
    private String size;
    private int quantity;
    private String code;
    private int quantityToBuy;

    private final Logger logger = Logger.getLogger(Product.class.getName());

    public Product(String productName) {
        this.productName = productName;
        this.size="none";
    }

    public String getProductName() {
        return productName;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(String price) {
        if(price.contains("."))
        this.price = Double.parseDouble(price.substring(price.lastIndexOf("$") + 1));
        else
            this.price = Double.parseDouble(price.substring(price.lastIndexOf("$") + 1) + ".00");
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        if(size.contains("$")) {
            this.setPrice(Double.toString((this.getPrice()+ Double.parseDouble(size.substring(size.lastIndexOf("$") + 1)))));
                    }
        this.size = size;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        if(!quantity.equals("Temporary sold out"))
        this.quantity = Integer.parseInt(quantity.substring(0,quantity.indexOf(" ")));
        else this.quantity=0;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getQuantityToBuy() {
        return quantityToBuy;
    }

    public void setQuantityToBuy(int quantityToBuy) {
        this.quantityToBuy = quantityToBuy;
    }
    public void increaseQuantityToBuy()
    {
        this.setQuantityToBuy(this.getQuantityToBuy()+1);
    }
}
