<?php

session_start();


//0.外部ファイル読み込み
include("functions.php");

ssidChk();
//1.GETでidを取得
$id = $_GET["id"];

//2.DB接続など
try {
  $pdo = new PDO('mysql:dbname=gs_db48;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('データベースに接続できませんでした。'.$e->getMessage());
}

//２．データ登録SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_user_table WHERE id=:id");
$stmt->bindValue(':id', $id);
$status = $stmt->execute();

//３．データ表示
$view="";
if($status==false){
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
}else{
  //Selectデータの数だけ自動でループしてくれる
  $row = $stmt->fetch(); //$row["name"]
}

?>


<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>ユーザ更新</title>
<!--  <link href="css/bootstrap.min.css" rel="stylesheet">-->
  <style>div{padding: 10px;font-size:16px;}</style>
<!--  <script src="js/jquery-2.1.3.min.js"></script>-->

</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
<!--    <div class="container-fluid">-->
    <div class="navbar-header"><a class="navbar-brand" href="user_select.php">ユーザ一覧</a></div>
  </nav>
</header>
<!-- Head[End] -->
<div>ようこそ<?= $_SESSION["name"] ?>様</div>
<!-- Main[Start] -->
<form method="post" action="user_update.php">
  <div class="jumbotron">
   <fieldset>
    <legend>ユーザー</legend>
     <label>名前：<input type="text" name="name" value="<?=$row["name"]?>"></label><br>
     <label>ユーザＩＤ：<input type="text" name="lid" value="<?=$row["lid"]?>"></label><br>
     <label>ユーザパスワード：<input type="text" name="lpw" value=""></label><br>
     <label>管理者<input type="radio" name="kanri_flg" value="0" <?php if($row["kanri_flg"] == 0) echo "checked" ?>>スーパー管理者<input type="radio" name="kanri_flg" value="1" <?php if($row["kanri_flg"] == 1)echo "checked" ?>></label><br>
     
     
     <label>使用中<input type="radio" name="life_flg" value="0" <?php if($row["life_flg"] == 0) echo "checked" ?>>使用しない<input type="radio" name="life_flg" value="1" <?php if($row["life_flg"] == 1) echo "checked" ?>></label><br>
     <input type="hidden" name="id" value="<?=$id?>">
     <input type="submit" value="送信">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->



</body>
</html>






