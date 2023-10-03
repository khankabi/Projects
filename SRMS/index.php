<?php
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Student Result Management System</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <style>
        li{
            color: red !important;
        }
    </style>

</head>

<body>
    <!-- Responsive navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-5">
        <div class="container">
            <a class="navbar-brand" href="index.php">
                <img src="images/nav-logo rs.png" alt=""> YEWS National Senior Collage</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item" ><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                    <li class="nav-item"><a class="nav-link active" href="find-result.php">Students</a></li>
                    <li class="nav-item"><a class="nav-link active" href="admin-login.php">Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Header - set the background image for the header in the line below-->
    <header class="py-5 bg-image-full" style="background-image: url('images/landing img.jpg')">

    
</header>
<!-- Login panel -->
<section id="login" class="container-fluid  text-center py-5 pb-5">
    <div class="container-fluid">
      <div class="text-center">
        <h2 class="text-center pr-5 pb-5" style="font-family: 'Ubuntu', sans-serif;">Login</h2>
      </div>
      <div class="col-sm-12">
        <div class="row ">
          <div class="col-sm-6">
            <div class=" mr-5">

              <img src="images/background-image.jpg " class="img-fluid" alt=" student or normal use">

              <div class="border border-secondary login-card"
                style="margin: auto;
                    margin-top: auto;padding: 20px;z-index: 99;width: 90%;position: relative;margin-top: -46px;background-color: #FFF;">
                <h5>Student Login</h5>
                <a href="find-result.php">
                  <button class="btn btn-info btn-sm">Click Here</button>
                </a>
              </div>
            </div>
          </div>
          <div class="col-sm-6 ">
            <div class="mr-5">
              <img src="images/background-image.jpg" class="img-fluid" alt="doctor login">
              <div class="border border-secondary login-card"
                style="margin: auto;
                    margin-top: auto;padding: 20px;z-index: 99;width: 90%;position: relative;margin-top: -46px;background-color: #FFF;">
                <h5>Admin login</h5>
                <a href="admin-login.php" >
                  <button class="btn btn-info btn-sm">Click Here</button>
                </a>
              </div>
            </div>
          </div>

          <!-- <div class="col-sm-4">
            <div class="mr-5">
              <img src="images/background-image.jpg" class="img-fluid" alt="admin login">

              <div class="border border-secondary"
                style="margin: auto;
                        margin-top: auto;padding: 20px;z-index: 99;width: 90%;position: relative;margin-top: -46px;background-color: #FFF;">
                <h5>Admin Login</h5>
                <a href="login/admin.php" target="_blank">
                  <button class="btn btn-info btn-sm">Click Here</button>
                </a>
              </div>
            </div>
          </div> -->
        </div>
      </div>
    </div>
  </section> 


    <!-- Content section-->
    <section class="py-5 ">
        <div class="container my-5">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <h2>Notice Board</h2>
                    <hr color="#000" />
                    <marquee direction="up" scrollamount="3" onmouseover="this.stop();" onmouseout="this.start();">
                        <ul>
                            <?php $sql = "SELECT * from tblnotice";
                            $query = $dbh->prepare($sql);
                            $query->execute();
                            $results = $query->fetchAll(PDO::FETCH_OBJ);
                            $cnt = 1;
                            if ($query->rowCount() > 0) {
                                foreach ($results as $result) { ?>
                                    <li><a href="notice-details.php?nid=<?php echo htmlentities($result->id); ?>"
                                            target="_blank">
                                            <?php echo htmlentities($result->noticeTitle); ?>
                                    </li>
                                <?php }
                            } ?>

                        </ul>
                    </marquee>

                </div>
            </div>
        </div>
    </section>


    <!-- Footer-->
    <footer class="py-4 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; YEWS National Senior Collage
                <?php echo date('Y'); ?>
            </p>
        </div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>