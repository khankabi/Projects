<?php 



    //connection to server
    $conn=mysqli_connect('localhost','root',"");
    if($conn){
        echo "connection is successful";
    }
    else{
        echo "connection failed";
    }

    //connect to database which is already created through userinfo sql file
    mysqli_select_db($conn,'dcms');

    //getting information by post method which is recommanded
    $username=$_POST['username'];
    $email=$_POST['email'];
    $mobile=$_POST['mobile'];
    $comment=$_POST['comment'];
    echo '<BR>';
    echo $username;
    echo '<BR>';
    echo $email;
    echo '<BR>';
    echo $comment;
    echo '<BR>';
    echo $mobile;
    echo '<BR>';


    //inserting into table
    $query="INSERT INTO `userinfo`(`username`, `email`, `mobile`, `comment`) VALUES ('$username','$email','$mobile','$comment')";
    echo $query;
    mysqli_query($conn,$query);
    header('location:homepage.php');
?>