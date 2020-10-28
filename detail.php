<?php
require_once("funcs.php");
//１．PHP
//select.phpのPHPコードをマルっとコピーしてきます。
//※SQLとデータ取得の箇所を修正します。
$id = $_GET['id'];


//【重要】
//insert.phpを修正（関数化）してからselect.phpを開く！！

//DB接続します
$pdo = db_conn();


//２．データ登録SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_user_table WHERE id=" . $id);
$status = $stmt->execute();


//３．データ表示
$view = "";
if ($status == false) {
    sql_error($status);
} else {
   $result = $stmt->fetch();
  }

?>


<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>新規ユーザー登録</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>


<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="us_list_view.php">ユーザー一覧を開く</a></div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post" action="us_update_view.php">
  <div class="jumbotron">
   <fieldset>
    <legend>新規ユーザー登録</legend>
     <label>名前：<input type="text" name="name" value=<?= $result['name'] ?> required></label><br>
     <label>ID：<input type="text" name="lid" value=<?= $result['lid'] ?> required></label><br>
     <label>Password：<input type="text" name="lpw" value=<?= $result['lpw'] ?> required></label><br>
     <input type="hidden" name="kanri_flg" value="0">
     <label>管理者：<input type="checkbox" name="kanri_flg" value="1" <?= $result['kanri_flg']==1 ? 'checked':''?>></label><br>
     <input type="hidden" name="life_flg" value="0">
     <label>退職者：<input type="checkbox" name="life_flg" value="1" <?= $result['life_flg']==1 ? 'checked':''?>></label><br>
     <input type="hidden" name="id" value=<?= $result['id'] ?>>
     <input type="submit" value="送信">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>