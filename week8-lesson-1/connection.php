<?php

	header("Content-type:application/json;charset=utf-8");//报头
	$con=mysql_connect('localhost','root','');//建立与MySQL数据库的连接
	$newsclass=$_POST['newsclass'];//读取前端发过来的关键数据
	$action=$_POST['action'];
	$newstitle=$_POST['newstitle'];
	$newsimg=$_POST['newsimg'];
	$newscontent=$_POST['newscontent'];
	$newslink=$_POST['newslink'];
	$newsdate=$_POST['newsdate'];
	if (!$con) {
		die('Could not connect:'.mysql_error());
	}else{

		mysql_select_db("news", $con);//访问信息存储的数据库

		mysql_query("SET NAMES 'utf8'");

		if ($action=='select'){//数据库数据的读取
			$dataSearch="SELECT  `newsid`, `newsimg`, `newstitle`, `newscontent`, `newslink`, `newsdate` FROM `baidunewsdb` WHERE `newsclass`='$newsclass'";
		
			$result=mysql_query($dataSearch,$con);//获取符合要求的匹配数据
		
			$dataArr=array();
		
			while ($newsinfo = mysql_fetch_array($result)){ //获取所有符合要求的数据，并存放在数组中
		
				$newsid = $newsinfo['newsid'];
		
				$newsimg = $newsinfo['newsimg'];
		
				$newstitle = $newsinfo['newstitle'];
		
				$newscontent = $newsinfo['newscontent'];
		
				$newslink = $newsinfo['newslink'];
		
				$newsdate = $newsinfo['newsdate'];
		
				$arr=array('newsid' => $newsid,'newsimg' => $newsimg, 'newstitle' => $newstitle,'newscontent' => $newscontent,'newslink' => $newslink,'newsdate' => $newsdate) ;
		
				array_push($dataArr, $arr);

			};
		};

		if ($action=='insert') {//数据库数据的添加
			$dataIn="INSERT INTO `baidunewsdb`(`newsclass`, `newsimg`, `newstitle`, `newscontent`, `newslink`, `newsdate`) VALUES ('$newsclass','$newsimg','$newstitle','$newscontent','$newslink','$newsdate')";

			mysql_query($dataIn);

		};

	    if ($action=='delete') {//数据库数据的删除

			$dataDel = "DELETE FROM `baidunewsdb` WHERE `newstitle`='$newstitle'";

			mysql_query($dataDel);
		};



		echo json_encode($dataArr, JSON_UNESCAPED_UNICODE);//以JSON对象形式返回数据

		mysql_close($con);
	}

?>