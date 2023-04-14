var app = angular.module('app', []);
app.controller('controllerForCard', function ($scope) {
    $scope.index;
    $scope.sortBy = 'name';
    $scope.addToCart = function (items) {
        let carts = [];
        $scope.index = this.carts.findIndex(x => x.name === items.name);
        if (index >= 0) {
            this.carts[index].quantity += 1;
        } else {
            let itemDetails = {
                name: items.name,
                image: items.image,
                price: items.price,
                quantity: 1,
                amount: function () {
                    return this.price * this.quantity;
                }
            }
        }
        // this.carts.push(itemDetails);
        console.log(itemDetails);
    }
    $scope.items = [{
            image: "1.jpg",
            name: "Cantori Bedside Table",
            descriptions: "Pellentesque tempus enim dignissim lacinia imperdiet. Aenean molestie tempus dolor,vitae varius dolor pharetra auctor.",
            price: 159,
            button: "Add to Cart"
        },
        {
            image: "2.jpg",
            name: "Table Lamp Lucia Tucci Tous",
            descriptions: "Pellentesque tempus enim dignissim lacinia imperdiet. Aenean molestie tempus dolor,vitae varius dolor pharetra auctor.",
            price: 129,
            button: "Add to Cart"
        },
        {
            image: "light.jpg",
            name: "Vien Metal Pendant Light",
            descriptions: "Pellentesque tempus enim dignissim lacinia imperdiet. Aenean molestie tempus dolor,vitae varius dolor pharetra auctor.",
            price: 111,
            button: "Add to Cart"
        },
        {
            image: "light_1.jpg",
            name: "David Derksen Brass Light",
            descriptions: "Pellentesque tempus enim dignissim lacinia imperdiet. Aenean molestie tempus dolor,vitae varius dolor pharetra auctor.",
            price: 234,
            button: "Add to Cart"
        },
        {
            image: "lamp.jpg",
            name: "Ceiling Lamp Lumion Quinn",
            descriptions: "Pellentesque tempus enim dignissim lacinia imperdiet. Aenean molestie tempus dolor,vitae varius dolor pharetra auctor.",
            price: 245,
            button: "Add to Cart"
        },
        {
            image: "lamp_1.jpg",
            name: "Modern Style Woodren Lamp",
            descriptions: "Pellentesque tempus enim dignissim lacinia imperdiet. Aenean molestie tempus dolor,vitae varius dolor pharetra auctor.",
            price: 2131,
            button: "Add to Cart"
        },
        {
            image: "table.jpg",
            name: "Table Lamp Lucia Tucci Tous",
            descriptions: "Pellentesque tempus enim dignissim lacinia imperdiet. Aenean molestie tempus dolor,vitae varius dolor pharetra auctor.",
            price: 129,
            button: "Add to Cart"
        },
        {
            image: "3.jpg",
            name: "Mid Century Modern Table Lamp",
            descriptions: "Pellentesque tempus enim dignissim lacinia imperdiet. Aenean molestie tempus dolor,vitae varius dolor pharetra auctor.",
            price: 111,
            button: "Add to Cart"
        }
    ];
});