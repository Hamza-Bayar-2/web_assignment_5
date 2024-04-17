<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"> </script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"> </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/77bd1b3f48.js" crossorigin="anonymous"></script>
    <title>Web 5.Ödev</title>
</head>
<body>
<div class="container-md h-100 w-100 d-flex align-items-center justify-content-center">
    <div class="row d-flex align-items-center">

        <div class="col-sm-6">
            <img src="assets/foto2.png" alt="foto" class="w-100">
        </div>

        <div class="col-sm-6">
            <form name="register" id="register" action="hello-servlet" autocomplete="on">

                <div class="input-group">
                    <input class="w-100" type="text" id="email" name="email" required>
                    <label class="input-label" for="email">E-posta</label>
                    <i class="fa-solid fa-envelope"></i>
                </div>

                <div class="input-group">
                    <input class="w-100" type="text" id="name" name="name" required>
                    <label class="input-label" for="name">Name</label>
                    <i class="fa-solid fa-signature"></i>
                </div>

                <div class="input-group">
                    <input class="w-100" type="text" id="surname" name="surname" required>
                    <label class="input-label" for="surname">Surname</label>
                    <i class="fa-solid fa-signature"></i>
                </div>

                <div class="input-group">
                    <input class="w-100" type="number" id="phone_number" name="phone_number" required>
                    <label class="input-label" for="phone_number">Phone Number</label>
                    <i class="fa-solid fa-phone"></i>
                    <p class="plus90">+90</p>
                </div>

                <div class="input-group">
                    <input class="w-100" type="password" id="password" name="password" required>
                    <label class="input-label" for="password">Password</label>
                    <i class="fa-solid fa-lock" id="lock1"></i>
                </div>

                <div class="input-group">
                    <input class="w-100" type="password" id="confirm_password" name="confirm_password" required>
                    <label class="input-label" for="confirm_password">Confirm Password</label>
                    <i class="fa-solid fa-lock" id="lock2"></i>
                </div>

                <div class="col-md-12 d-flex align-items-center justify-content-between">

                    <div class="input-checkbox">
                        <input type="checkbox" id="showToggle">
                        <label for="showToggle">Show</label>
                    </div>

                    <div class="input-submit">
                        <input type="submit" value="Register">
                    </div>

                </div>

            </form>
        </div>

    </div>

</div>

<script src="formValidation.js"></script>
<script src="password.js"></script>

</body>
</html>