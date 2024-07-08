<%-- 
    Document   : dashboard
    Created on : Jul 6, 2024, 11:20:44 AM
    Author     : trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LittleHometown</title>
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.3.2/mdb.min.css"
            rel="stylesheet"
            />


        <style>
            .sidebar {
                height: 100vh;
            }
            .button {
                display: flex;
                align-items: center; 
            }
        </style>
    </head>
    <body>
        <div class="d-flex">
            <div class="d-flex flex-column flex-shrink-0 p-3 bg-light sidebar" style="width: 280px;">
                <a href="#" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
                    <span class="fs-4">LittleHometown</span>
                </a>
                <hr>
                <ul class="nav nav-pills flex-column mb-auto">

                    <li>
                        <a href="#" class="nav-link link-dark dropdown button "
                           class="btn btn-primary dropdown-toggle"
                           href="#"
                           role="button"
                           id="dropdownMenuLink"
                           data-mdb-dropdown-init
                           data-mdb-ripple-init
                           aria-expanded="false"
                           >
                            <i class="fas fa-users me-2  fa-2x"></i>
                            Account
                        </a>

                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <li><a class="dropdown-item" href="GetUser">Manage Account</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-link link-dark dropdown button"
                           class="btn btn-primary dropdown-toggle"
                           href="#"
                           role="button"
                           id="dropdownMenuLink"
                           data-mdb-dropdown-init
                           data-mdb-ripple-init
                           aria-expanded="false"
                           >
                            <i class="fas fa-carrot me-2 fa-2x"></i>
                            Ingredient
                        </a>

                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <li><a class="dropdown-item" href="GetIngredient">Manage Ingredient</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-link link-dark dropdown button"
                           class="btn btn-primary dropdown-toggle"
                           href="#"
                           role="button"
                           id="dropdownMenuLink"
                           data-mdb-dropdown-init
                           data-mdb-ripple-init
                           aria-expanded="false"
                           >
                            <i class="fas fa-utensils me-2  fa-2x"></i>
                            Meal
                        </a>

                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <li><a class="dropdown-item" href="GetMeal">Manage Meal</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-link link-dark dropdown button"
                           class="btn btn-primary dropdown-toggle"
                           href="#"
                           role="button"
                           id="dropdownMenuLink"
                           data-mdb-dropdown-init
                           data-mdb-ripple-init
                           aria-expanded="false"
                           >
                            <i class="fas fa-clipboard-list me-2 fa-2x"></i>
                            Order
                        </a>

                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                                        <li>
                        <a href="#" class="nav-link link-dark dropdown button"
                           class="btn btn-primary dropdown-toggle"
                           href="#"
                           role="button"
                           id="dropdownMenuLink"
                           data-mdb-dropdown-init
                           data-mdb-ripple-init
                           aria-expanded="false"
                           >
                            <i class="fas fa-calendar me-2 fa-2x"></i>
                            Weekly Plan
                        </a>

                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                </ul>
                <hr>
                <div class="dropdown">
                    <a
                        data-mdb-dropdown-init
                        class="dropdown-toggle d-flex align-items-center hidden-arrow"
                        href="#"
                        id="navbarDropdownMenuAvatar"
                        role="button"
                        aria-expanded="false"
                        >
                        <img
                            src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp"
                            class="rounded-circle"
                            height="50"
                            alt="Black and White Portrait of a Man"
                            loading="lazy"
                            />
                    </a>
                    <ul
                        class="dropdown-menu dropdown-menu-end"
                        aria-labelledby="navbarDropdownMenuAvatar"
                        >
                        <li>
                            <a class="dropdown-item" href="#">My profile</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">Settings</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="Logout">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
