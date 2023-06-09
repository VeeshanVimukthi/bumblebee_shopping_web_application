<%--
  Created by IntelliJ IDEA.
  User: Veeshan
  Date: 3/10/2023
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.0.0/dist/css/bootstrap.min.css">
    <script src="https://unpkg.com/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>



<div class="vh-70 d-flex justify-content-center align-items-center">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-md-8 col-lg-6">
                <div class="border border-3 border-primary"></div>
                <div class="card bg-white shadow-lg">
                    <a href="../index.jsp">  <button type="button" class="btn-close" aria-label="Close" data-bs-dismiss="modal" style="position: absolute;top: 0; right: 0;"></button> </a>

                    <div class="card-body p-5">
                        <form class="mb-3 mt-md-4" action="../register" method="post">
                            <h2 class="fw-bold mb-2 text-uppercase ">Registration Form </h2>
                            <p class=" mb-5">Please enter your Accurate data !</p>

                            <div class="mb-3">
                                <label for="username" class="form-label ">User Name</label>
                                <input type="text" class="form-control" name="username" id="username" placeholder="User name">
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label ">Email address</label>
                                <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com">
                            </div>
<%--                            <div class="mb-3">--%>
<%--                                <label for="numbers" class="form-label ">Contact Number</label>--%>
<%--                                <input type="number" class="form-control" name="numbers" id="numbers" placeholder="94 00 000 000">--%>
<%--                            </div>--%>
<%--                            <div class="mb-3">--%>
<%--                                <label for="address" class="form-label ">Address</label>--%>
<%--                                <input type="address" class="form-control" name="address" id="address" placeholder="Address">--%>
<%--                            </div>--%>
                            <div class="mb-3">
                                <label for="password" class="form-label ">Password</label>
                                <input type="password" class="form-control" name="password" id="password" placeholder="*******">
                            </div>

                            <p class="small"><a class="text-primary" href="forget-password.html">Forgot password?</a></p>
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="remember">
                                <label class="form-check-label" for="remember">Remember me</label>
                            </div>
                            <div class="d-grid">
                                <button class="btn btn-outline-dark" type="submit" id="Create">Create account</button>
                            </div>
                        </form>
                        <div>
                            <p class="mb-0  text-center">Do you have an account? <a href="Login.jsp" class="text-primary fw-bold">Sign In</a></p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




</body>
</html>
