<?php
require "functions.php";
// Check if user is logged in and has access to this page,
// otherwise redirect them to the login page
// check_login()
?>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipy</title>
    <link rel="stylesheet" href="assets/home.css">
</head>
  <body>

    <?php require "header.php"; ?>
    

  <!-- sides div -->
  <div class="sidesContainer">

  
  <div class="sides">
    <div onclick="home()" id="home">Home</div>
    <div onclick="recipes()" id="recipes">Recipes</div>
  </div>
  </div>

  <!-- posts -->
  <div class="posts">


  <div style="margin: 42px 0; display:flex; flex-direction:column; align-items:center;" class="meal-search">
            <h2  class="title">Discover New Recipes</h2>
            
           
            <div class="meal-search-box">
                <input type="text" class="search-control" placeholder="Enter an Recipe name..." >
            <button type="submit" class="search-btn btn" >
                <i class="fas fa-search"></i>
            </button>
            </div>
        </div>


    <h3 style="align-self: flex-start; margin:0 0 10px 8px;">Timeline</h3>
    
    <!-- <a href="profile.php">
    <div style=" margin: 10px 0; background:#ff9800;" class="add_post">
      <img src="add.png" alt="">
    Add new post</div></a> -->
    <?php
    // $id =  $_SESSION['info']['id'];
    $query = "SELECT * FROM posts  ORDER BY id DESC";

    $result = mysqli_query($con,$query);


      
    ?>



    <?php
   if(mysqli_num_rows($result) >  0):?> <!--//if there is data in the database then do this -->

    <?php  while($row = mysqli_fetch_assoc($result)):?>

        <?php  
        $user_id = $row['user_id']; //get the user id of who posted it
    $query = "SELECT username FROM users WHERE id='$user_id' limit 1 ";  
      $result2 = mysqli_query($con,$query);
      $user_data= mysqli_fetch_assoc($result2);
        ?>

     <div class="post">
      <div class="content">
      <div  class="post_img">
      <img src="pdp.png" alt="" >

      </div>
      <div style="flex:8;">
      <div class="post_user_info">
    <div><b><?= htmlspecialchars($user_data['username']) ?></b>
    <?php if ($user_data['username'] === 'islamhamdaoui' || $user_data['username'] === 'zaidimohamed'): ?>
        <img class="verified" src="verified.png" alt="Verified">
    <?php endif; ?> 
    </div>
    <span style="font-size: 11px; color:#808080;">
        <?= date("jS M, Y", strtotime($row['date'])) ?>
    </span>
</div>
 
      
      <?php echo nl2br($row['post']) ?>
      </div>
      </div>
      <hr> 
<!-- <div class="reactions">

<div class="reaction" style="display: flex; align-items:center;">
    <img src="like.png" alt="">
    <span>300</span>
    <img src="dislike.png" alt="">
  </div>
      
     </div> -->
     </div>

   <?php endwhile;?>
   <?php endif;?>
    


  </div> <!--end f post-->


  <div class="recipesContainer">


  <?php require "recipes.html"; ?>
</div>
     

    <!-- <?php require "footer.php"; ?> -->
  


    <style>
* {
  box-sizing: border-box;
}
      .recipesContainer{
        display: none;
      }


      .sidesContainer{
       
        width: 100%;
        display: flex;
        justify-content: center;
        padding: 20px 0;
      }
   
      .sides {
        display: flex;
        background-color: #fff;
        align-self: center;
        padding: 3px;

        border-radius: 8px;
        width: fit-content;
        
      }
      #home {
        background-color: #FF9800;
        padding: 8px 15px;
        border-radius: 8px;
        color: #fff;
        font-weight: 500;
        cursor: pointer;
      }
      #recipes {
        padding: 8px 15px;
        border-radius: 8px;
        cursor: pointer;
        font-weight: 500;
      }

      .verified {
  height: 13px; 
  width: 13px; 
 /* visibility: hidden; */
  margin-left: 3px; 
     pointer-events: none;
}

    </style>



        <script>
          function home(){

            let home =document.getElementById('home')
            let recipes =document.getElementById('recipes')
            let posts = document.querySelector('.posts')
            let recipesContainer =document.querySelector('.recipesContainer')

            home.style.background = '#FF9800'
            recipes.style.background ='transparent'
            home.style.color = 'white'
            recipes.style.color = 'black'
            recipesContainer.style.display = 'none'
            posts.style.display = 'block'
            
          }



          function recipes(){

            let home =document.getElementById('home')
            let recipes =document.getElementById('recipes')
            let posts = document.querySelector('.posts')
            let recipesContainer =document.querySelector('.recipesContainer')

            recipes.style.background = '#FF9800'
            home.style.background ='transparent'
            recipes.style.color = 'white'
            home.style.color = 'black'
            posts.style.display = 'none'
            recipesContainer.style.display = 'block'

            
          }
        </script>
</body>
</html>