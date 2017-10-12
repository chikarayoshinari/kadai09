<?php


session_start();


//0.外部ファイル読み込み
include("functions.php");

ssidChk();


?>



<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>ユーザ登録</title>
<!--  <link href="css/bootstrap.min.css" rel="stylesheet">-->
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
<!--    <div class="container-fluid">-->
    <div class="navbar-header"><a class="navbar-brand" href="user_select.php">ユーザ一覧へ</a></div>
  </nav>
</header>
<!-- Head[End] -->
<div>ようこそ<?= $_SESSION["name"] ?>様</div>
<!-- Main[Start] -->
<form method="post" action="user_insert.php">
  <div class="jumbotron">
   <fieldset>
    <legend>ユーザー</legend>
     <label>名前：<input type="text" name="name"></label><br>
     <label>ユーザＩＤ：<input type="text" name="lid"></label><br>
     <label>ユーザパスワード：<input type="text" name="lpw"></label><br>
     <label>管理者<input type="radio" name="kanri_flg" value="0">スーパー管理者<input type="radio" name="kanri_flg" value="1"></label><br>
     <label>使用中<input type="radio" name="life_flg" value="0">使用しない<input type="radio" name="life_flg" value="1"></label><br>
     <input type="submit" value="送信">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
