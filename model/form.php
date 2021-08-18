<?php
$msg = "";
$msgupdate = "";
if(isset($_POST['button-active']))
      try {
        // var_dump($_POST);
        $msgupdate="";
      if (!empty($_POST)) {
        $id="";
        $active = $_POST['button-active'] ;
        $idUser = $_POST['idUser'] ;
        $stmt = $conn->prepare('UPDATE `agents` SET active = ? WHERE agents.id = ?');
        $stmt->execute([$active, $idUser]);
        // $test = header('refresh:2; index.php');
        $msgupdate = '<spans class="alert alert-success mt-5 mt-md-0" role="alert">Mis à jour avec succés!</span>';
        header("refresh:2; /index.php");
      }
        else{
        //  test
        }
      } catch(PDOException $e) {
        echo "Error: " . $e->getMessage();
      }
      else {
        // echo"";
      }
?>
<?php
$msg = "";
$msgupdate = "";
if(isset($_POST['valider']))
      try {
        // var_dump($_POST);
        $msgupdate="";
      if (!empty($_POST)) {
        // $id="";
        $name = $_POST['name'];
        // var_dump($name);
        $firstName = $_POST['firstName'];
        // var_dump($firstName);
        $function = $_POST['function'];
        // var_dump($function);
        $idUser = $_POST['idUser'];
        // var_dump($idUser);
        $poles_services_id = $_POST['poles_services_id'];
        $role_ressource =$_POST['role_ressource'];
        $role_ressourceInt = (int)$role_ressource;
        $firstName = $_POST['firstName'];
        // var_dump($name,$firstName,$function,$idUser,$role_ressource,$role_ressourceInt);
        // $active = $_POST['button-active'] ;
        // $idUser = $_POST['idUser'] ;
        $stmt = $conn->prepare('UPDATE `agents` SET name = ?, first_name=? , `function` = ? ,poles_services_id= ? ,role_ressource= ? WHERE agents.id = ?');
        $stmt->execute([$name, $firstName , $function , $poles_services_id ,$role_ressourceInt, $idUser]);
        // $test = header('refresh:2; index.php');
        $msgupdate = '<spans class="alert alert-success mt-5 mt-md-0" role="alert">Mis à jour avec succés!</span>';
        header("refresh:2; /index.php");
      }
        else{
        //  test
        }
      } catch(PDOException $e) {
        echo "Error: " . $e->getMessage();
      }
      else {
        // echo"";
      }
?>
<?php 
if(!isset($_SESSION["loggedIn"]) || $_SESSION["loggedIn"] == false):
    ?>
<?php
        header("refresh:0; views/login.php");
    else: 
?>
<div class="container-fluid">
    <!-- ************Formulaire de saisi***************** -->
    <?php
    

?><!-- ************Table de récap***************** -->
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php endif; ?>
    <?php 
  try {                              
    $pole_service = "pole_service";
    $stmt = $conn->prepare('SELECT agents.id,agents.poles_services_id,agents.name,agents.first_name,agents.function,agents.active,poles_services.name_pole_service,role_ressource
    FROM `poles_services`,`agents`
    WHERE poles_services_id=agents.poles_services_id 
    AND agents.poles_services_id=poles_services.id
    ORDER BY poles_services.name_pole_service, agents.name ');
    $stmt->execute();
    $posts = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }catch(PDOException $e) {
      echo "Error: " . $e->getMessage();
    }
?>
    <?php if ($msgupdate): ?>
    <p><?=$msgupdate?></p>
    <?php endif; ?>
    <div class="pole col-md-5 border border-1 border-dark rounded-top mt-5 mb-0 text-center"
      style="background-color:#2e4f9b;color:white;">
      <h3>Liste des agents du GIEP-NC</h3>
    </div>
    <div class="col-12 d-md-flex d-none py-2 px-0 text-uppercase text-center "
      style="background-color:#2e4f9b;color:white; font-size: 1.2em;">
      <div class="col-md-2 align-self-center"> Pôle </div>
      <div class="col-md-2 align-self-center"> Nom </div>
      <div class="col-md-2 text-md-start ps-md-5 align-self-center"> Prénom </div>
      <div class="col-md-2 text-md-end align-self-center"> Fonction</div>
      <div class="col-md-1  align-self-center">Active</div>
      <div class="col-md-1  align-self-center">Rôle ressources</div>
      <div class="col-md-2  text-center align-self-center">Action</div>
    </div>

    <?php foreach ($posts as $post): ?>
    <form action="" class="border d-flex " method="POST">
          <div class="col-md-2 text-md-center mt-2">
          <span class="name_pole_service_reel-<?=$post['id']?>">
            <?=$post['name_pole_service']?>
            </span>
          </div>
          <div class="col-md-2 text-md-center mt-2">           
          <span class="name-<?=$post['id']?>">
            <?=$post['name']?>
            </span>
          </div>
          <div class="col-md-2 text-md-start ps-md-5 mt-2">           
          <span class="first_name-<?=$post['id']?>">
            <?=$post['first_name']?>
            </span>
          </div>
          <div class="col-md-2 text-md-end mt-2"> 
          <span class="function-<?=$post['id']?>">
            <?=$post['function']?>
            </span>
          </div>
          <div class="col-md-1 text-md-center mt-2 active-<?=$post['id']?>"  >
          <input type="text" class="d-none" name="idUser" value="<?=$post['id']?>">
            <?php 
            if ($post['active'] == 1) {
              echo"OUI";
            }else {
              echo"NON";
            }
            ?>
          </div>          
          <div class="col-md-1 text-md-end mt-2"> 
          <span class="role_ressource-<?=$post['id']?>">
            <?php 
            if ($post['role_ressource'] == 0) {
              echo"USER";
            }else if($post['role_ressource'] == 1 ) {
              echo"Secrétaire";
            }else{
              echo"Admin";
            }
            ?>
            </span>
          </div>
          <div class="col-md-2  text-center align-self-center">
        <span>
        <button type='button' id="button-absence-<?=$post['id']?>" class='btn btn-sm btn-outline-secondary '
                onclick="update('<?=$post['id']?>','<?=$post['name_pole_service']?>','<?=$post['name']?>','<?=$post['first_name']?>','<?=$post['function']?>','<?=$post['poles_services_id']?>','<?=$post['role_ressource']?>')">Modifier</button>
            <button id="button-valider-absence-<?=$post['id']?>"  type="submit" class="btn btn-sm" name="valider" style="background-color:#2e4f9b; color:white ;display:none" >valider</button>
        </span>
          
          <?php if ($post['active'] == 0) {
            echo"
              <button type='submit' class='btn btn-sm btn-outline-danger mt-2 mb-2' name='button-active' id='button-active' value='1'
             >ACTIVER</button>";
          }elseif ($post['active'] == 1) {
            echo"
            <button type='submit' name='button-active' value='0' id='button-desactiver' 
                class='btn btn-sm btn-outline-secondary text-uppercase mt-2 mb-2'>DESACTIVER</button>";
          }
          ?>
            </div>
      </form>
<?php endforeach; ?>
  </div>
</div>

</div>
</div>
<div class="col-md-1"></div>
</div>
<?php endif;