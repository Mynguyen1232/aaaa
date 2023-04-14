// This is code for banner slides
$(document).ready(function () {
    $(".image-banner").slick({
        draggable: true,
        autoplay: true,
        autoplaySpeed: 1000,
        prevArrow: '<button class="slick-prev slick-arrow"><i class="fa fa-angle-left" aria-hidden="true"></i></button>',
        nextArrow: '<button class="slick-next slick-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></button>'
    });
});

// This is lines code for Shop By Categories
$(".slickSliders").slick({
    speed: 1500,
    infinite: true,
    autoplay: true,
    draggable: true,
    slidesToShow: 4,
    slidesToScroll: 4,
    autoplaySpeed: 1000,
    prevArrow: '<button class="slick-prev slick-arrow"><i class="fa fa-angle-left" aria-hidden="true"></i></button>',
    nextArrow: '<button class="slick-next slick-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></button>',
    responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
                infinite: true,
                autoplay: true,
                autoplaySpeed: 1000,
                speed: 300,
                prevArrow: '<button class="slick-prev slick-arrow"><i class="fa fa-angle-left" aria-hidden="true"></i></button>',
                nextArrow: '<button class="slick-next slick-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></button>'
            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                autoplay: true,
                autoplaySpeed: 1000,
                speed: 300,
                prevArrow: '<button class="slick-prev slick-arrow"><i class="fa fa-angle-left" aria-hidden="true"></i></button>',
                nextArrow: '<button class="slick-next slick-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></button>'
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                autoplay: true,
                autoplaySpeed: 1000,
                speed: 300,
                prevArrow: '<button class="slick-prev slick-arrow"><i class="fa fa-angle-left" aria-hidden="true"></i></button>',
                nextArrow: '<button class="slick-next slick-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></button>'
            }
        }
    ]
});

// This is lines code for Best Sellers
$(".slider-bestSeller").slick({
    speed: 1500,
    infinite: true,
    autoplay: true,
    draggable: true,
    slidesToShow: 4,
    slidesToScroll: 4,
    autoplaySpeed: 1000,
    prevArrow: '<button class="slick-prev slick-arrow"><i class="fa fa-angle-left" aria-hidden="true"></i></button>',
    nextArrow: '<button class="slick-next slick-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></button>',
    responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
                infinite: true,
                autoplay: true,
                autoplaySpeed: 1000,
                speed: 300,
                prevArrow: '<button class="slick-prev slick-arrow"><i class="fa fa-angle-left" aria-hidden="true"></i></button>',
                nextArrow: '<button class="slick-next slick-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></button>'
            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                autoplay: true,
                autoplaySpeed: 1000,
                speed: 300,
                prevArrow: '<button class="slick-prev slick-arrow"><i class="fa fa-angle-left" aria-hidden="true"></i></button>',
                nextArrow: '<button class="slick-next slick-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></button>'
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                autoplay: true,
                autoplaySpeed: 1000,
                speed: 300,
                prevArrow: '<button class="slick-prev slick-arrow"><i class="fa fa-angle-left" aria-hidden="true"></i></button>',
                nextArrow: '<button class="slick-next slick-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></button>'
            }
        }
    ]
});

// This is code for Modal Popup load page
// const myModal = new bootstrap.Modal('#myModal');
// window.addEventListener('DOMContentLoaded', () => {
//     myModal.show();
// })

// This is code for Angular
var app = angular.module("myApp", [])
// 1. For Banner
app.controller("controllerForImageBanner", function ($scope) {
    $scope.imageBanner = [{
            image: "banner_1.jpg"
        },
        {
            image: "banner_2.jpg"
        }
    ];
})
// 2. For Shop By Categories
app.controller("controllerForShopByCategories", function ($scope) {
    $scope.items = [{
            image: "item_1.jpg",
            linkHeader: "Beds",
            subLink1: "Calligraphy",
            subLink2: "Marquetry",
            subLink3: "Carpentry",
            button: "View all"
        },
        {
            image: "item_2.jpg",
            linkHeader: "Tables",
            subLink1: "Basket weaving",
            subLink2: "Crochet",
            subLink3: "Papercutting",
            button: "View all"
        },
        {
            image: "item_3.jpg",
            linkHeader: "Chairs",
            subLink1: "Stonewave",
            subLink2: "Stained glass",
            subLink3: "Tatting",
            button: "View all"
        },
        {
            image: "item_4.jpg",
            linkHeader: "Cabinets",
            subLink1: "Intarsia",
            subLink2: "Stone carving",
            subLink3: "Coppersmith",
            button: "View all"
        }
    ];
    $scope.a = "akljsdhlkjsa"
})
//For Trending Product
app.controller("controllerForTrendingProduct", function ($scope) {
    $scope.products = [{
            image: "clock.jpg",
            name: "Woodern Modern Wall Clock",
            price: 3.90
        },
        {
            image: "lamp.jpg",
            name: "Beige Lamp With Gold Base",
            price: 29.00
        },
        {
            image: "light.jpg",
            name: "Vien Metal Perdant Light Blue",
            price: 23.90
        },
        {
            image: "lamp_1.jpg",
            name: "Modern Style Woodren Lamp",
            price: 12.90
        },
        {
            image: "lam_2.jpg",
            name: "Table Lamp Lucia Tucci Tous",
            price: 13.90
        },
        {
            image: "table.jpg",
            name: "Bedside Table With Jimi Drawer",
            price: 11.90
        },
        {
            image: "lamp_3.jpg",
            name: "Beige Lamp With Gold Base",
            price: 29.00
        },
        {
            image: "light_1.jpg",
            name: "David Derksen Brass Light",
            price: 12.90
        }
    ]
})