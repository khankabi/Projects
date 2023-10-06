<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Feedback</title>
  </head>
  <body>
    <?php 
    include "includes/navbar.php"
    ?>
  <section class="my-5 pd-5" id="contactus">
    <div class="py-5">
      <h1 class="text-center" style="font-family: 'Ubuntu', sans-serif;">Feedback</h1>
    </div>
    <div class="d-flex justify-content-around pl-5 pr-5">

      <iframe
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3749.3967920776004!2d73.78621437522882!3d19.991854631410504!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb039f714289%3A0x375a7242f955c5bc!2sYews%20National%20High%20School%20and%20College%20for%20Boys%20and%20Girls!5e0!3m2!1sen!2sin!4v1694597289756!5m2!1sen!2sin"
        width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
        referrerpolicy="no-referrer-when-downgrade"></iframe>

      <div class="w-50 m-auto">
        <form action="userinfo.php" method="post">

          <!-- username -->
          <div class="form-group">
            <div class="input-group-prepend">
              <span class="input-group-text" id="basic-addon1"><label for="username">Name</label></span>
              <input type="text" name="username" id="username" autocomplete="off" class="form-control">
            </div>
          </div>
          <!-- emailaddress -->
          <div class="form-group">
            <div class="input-group-prepend">
              <span class="input-group-text" id="basic-addon1"><label for="email">Email</label></span>
              <input type="text" name="email" id="email" autocomplete="off" class="form-control">
            </div>
          </div>
          <!-- mobile -->
          <div class="form-group">
            <div class="input-group-prepend">
              <span class="input-group-text" id="basic-addon1"><label for="mobile">+91</label></span>
              <input type="text" name="mobile" id="mobile" autocomplete="off" class="form-control">
            </div>
          </div>
          <!-- comment -->
          <div class="form-group">
            <label for="comment">Describe Your Problem</label><textarea class="form-control" name="comment"
              id="comment"></textarea>
          </div>
          <button type="submit" class="btn btn-info">Submit</button>
        </form>
      </div>
    </div>
  </section>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>