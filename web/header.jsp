<%-- 
    Document   : header
    Created on : Jun 22, 2024, 1:55:31 PM
    Author     : trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <link href="css/stylesheet.css" rel="stylesheet" />

    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-light bg-body-tertiary fixed-top">
            <div class="container">
                <!-- Brand -->
                <a class="navbar-brand me-auto" href="#">
                    <img
                        src="img/bg.ai_1719131872236.png"
                        height="60"
                        alt="Logo"
                        loading="lazy"
                        />
                </a>
                <!-- Brand-->

                <button
                    data-mdb-collapse-init
                    class="navbar-toggler"
                    type="button"
                    data-mdb-target="#navbarToggler"
                    aria-controls="navbarToggler"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse justify-content-evenly " id="navbarToggler">

                    <ul class="navbar-nav mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled"
                               >Disabled</a
                            >
                        </li>
                    </ul>
                    <form class="d-flex input-group w-auto">
                        <input
                            type="search"
                            class="form-control"
                            placeholder="Type query"
                            aria-label="Search"
                            />
                        <button
                            data-mdb-ripple-init
                            class="btn btn-outline-primary"
                            type="button"
                            data-mdb-ripple-color="dark"
                            >
                            Search
                        </button>
                    </form>
                </div>

                <!-- Right elements -->
                <div class="d-flex align-items-center ">
                    <!-- Icon -->
                    <a class="text-reset me-3 fa-lg" href="#">
                        <i class="fas fa-shopping-cart"></i>
                    </a>
                    <!-- Icon -->

                    <!-- Notifications -->
                    <div class="dropdown">
                        <a
                            data-mdb-dropdown-init
                            class="text-reset me-3 dropdown-toggle hidden-arrow"
                            href="#"
                            id="navbarDropdownMenuLink"
                            role="button"
                            aria-expanded="false"
                            >
                            <i class="fas fa-bell fa-lg"></i>
                            <span class="badge rounded-pill badge-notification bg-danger">1</span>
                        </a>
                        <ul
                            class="dropdown-menu dropdown-menu-end"
                            aria-labelledby="navbarDropdownMenuLink"
                            >
                            <li>
                                <a class="dropdown-item" href="#">Some news</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Another news</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </li>
                        </ul>
                    </div>
                    <!-- Notifications -->

                    <!-- Avatar -->
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
                                <a class="dropdown-item" href="#">Logout</a>
                            </li>
                        </ul>
                    </div>
                    <!-- Avatar -->
                </div>
                <!-- Right elements -->
            </div>
        </nav>