<?php
 //$erreur = "1";
   $erreur= ""; 
   $success = 0;
    require 'admin/database.php';

    if(!empty($_GET['id']))
    {
        $id = checkInput($_GET['id']);
    }
    $db = Database::connect();
    $statement = $db->prepare("SELECT items.id, items.name, items.description, items.price, items.image, categories.name AS category FROM items LEFT JOIN categories ON items.category = categories.id WHERE items.id = ?");
    $statement->execute(array($id));
    $item = $statement->fetch();
    Database::disconnect();

    function checkInput($data)
    {
      $data = trim($data);
      $data = stripslashes($data);
      $data = htmlspecialchars($data);
      return $data;
    }

   
     if(!empty($_POST) ) {
         if ( empty($_POST['nom']) ){
             $erreur =  "Veuiller entrer votre nom";
         }
         else if ( empty($_POST['adresse'])){
             $erreur =  "Veuiller entrer votre addresse";
        }
        $order_name = checkInput($_POST['order_name']);
        $nom               = checkInput($_POST['nom']);
        $adresse        = checkInput($_POST['adresse']);
        $GSM              = checkInput($_POST['GSM']);
        $quantite = checkInput($_POST['quantite']) ? $_POST['quantite'] : 1 ;
        $prix_d_unite = checkInput($_POST['prix_d_unite']);
        $prix = $prix_d_unite*$quantite;

        try{
            $db = Database::connect();
            $statement = "INSERT INTO orders values ('$nom_ordre',rand(),$quantite,$prix,'$nom','$adresse','$GSM') ";
            $db ->exec($statement);
            Database::disconnect();
            $success = 1;
        }
        catch(Exception $e)
        {
            die( $e->getMessage() );
        }
        


        

    }


        
    

?>

<!DOCTYPE html>
<html>
    <head>
        <title>Compléter votre commande - Meilleur Food.</title>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link href='http://fonts.googleapis.com/css?family=Holtwood+One+SC' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/styles.css">
    </head>

    <body class="order-panel-body">
    <?php if ( $success){
            echo '<div class="success-container">
                <div class="success">
                    <p class="txt">votre commande a été validé, merci pour nous choisir';
                    echo'<a href="./index.php" class="btn btn-link">Retour</a>';
                    echo '</p>
                </div>
            </div>';}
        ?>
        <?php if ( $erreur)
            echo '<div class="erreur-container">
                <div class="erreur">
                    <h4 class="txt>'. $erreur .'</h4>
                </div>
            </div>'
        ?>
        <div class="order-first-page-background">
            <img  class="order-bg" src="./images/bg2.jpg" />
        </div>
         <div class="container admin order-container">

            <div class="row">
               <div class="col-sm-6">
                   
                    <h1 ><strong class="order-title">Compléter votre commande</strong></h1>
                    <br>
                    <form   action="order.php" role="form" method="post" enctype="multipart/form-data">
                      <table>
                            <tr>
                            <td>Nom du commande</td><td><input class="order-input" type="text" name="order-name" placeholder="<?php echo $item['name'];?>" value="<?php echo $item['name'];?>" readonly></td>
                            </tr>
                            <tr>
                            <td>Quantité</td><td><input class="order-input" type="number" name="quantite" placeholder="1" ></td>
                            </tr>
                            <tr>
                            <td>Prix d'unité</td><td><input class="order-input" type="text" name="prix_d_unite"  value="<?php echo number_format((float)$item['price'], 2, '.', ''). ' €';?>" readonly></td>
                            </tr>
                            <tr>
                            <td>Votre Nom</td><td><input class="order-input" type="text" name="nom" placeholder="(obligatoire)"/></td>
                            </tr>
                            <tr>
                            <td>Votre Adresse</td><td><textarea class="order-textarea" rows="4" cols="50" name="adresse" placeholder="(obligatoire)" ></textarea></td>
                            </tr>
                            <tr>
                            <td>Votre télé</td><td><input class="order-input" type="text" name="GSM" placeholder="(préféré)" /></td>
                            </tr>
                      </table>
                      <div class="form-actions ">
                       <button class="btn btn-success pull-right" type="submit"><span class="glyphicon glyphicon-ok"></span> Confirmer</button>
                       <a class="btn btn-primary pull-right" href="index.php"><span class="glyphicon glyphicon-arrow-left"></span> Retour</a>
                      </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

