# People
customer = person "Customer" "Browses and buys products in the online shop."
admin = person "Administrator" "Manages the product catalogue."

# Main system
shop = softwareSystem "Online Shop" "Allows customers to browse and buy products." {
    web = container "Web Application" "User interface for customers." "React"
    api = container "API" "Shop business logic." "Java / Spring Boot"
    db = container "Database" "Products, orders, customers." "PostgreSQL" {
        tags "Database"
    }

    web -> api "Calls" "JSON/HTTPS"
    api -> db "Reads from and writes to" "JDBC"
}

# External systems
group "External Systems" {
    payments = softwareSystem "Payment Gateway" "Handles card payments." {
        tags "External"
    }
    email = softwareSystem "E-mail System" "Sends notifications." {
        tags "External"
    }
}

# Relationships
customer -> shop.web "Browses products and places orders" "HTTPS"
admin -> shop.web "Manages the catalogue" "HTTPS"
shop.api -> payments "Requests payment" "HTTPS"
shop.api -> email "Sends order confirmations" "SMTP"
