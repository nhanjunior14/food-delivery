<?php
	if(!empty($_GET["action"])) {
		$getId = isset($_GET['id']) ? htmlspecialchars($_GET['id']) : '';
		$getQuantity = isset($_POST['quantity']) ? htmlspecialchars($_POST['quantity']) : '';

		switch($_GET["action"]) {
			case "add":
			if(!empty($getQuantity)) {
				$stmt = $db->prepare("SELECT * FROM dishes where dishes_id = ?");
				$stmt->bind_param('i',$getId);
				$stmt->execute();
				$productDetails = $stmt->get_result()->fetch_object();
				$itemArray = array($productDetails->dishes_id=>array('title'=>$productDetails->title, 'dishes_id'=>$productDetails->dishes_id, 'quantity'=>$getQuantity, 'price'=>$productDetails->price));
				
				if(!empty($_SESSION["cart_item"])) {
					if(in_array($productDetails->dishes_id,array_keys($_SESSION["cart_item"]))) {
						foreach($_SESSION["cart_item"] as $k => $v) {
							if($productDetails->dishes_id == $k) {
								if(empty($_SESSION["cart_item"][$k]["quantity"])) {
									$_SESSION["cart_item"][$k]["quantity"] = 0;
								}
								$_SESSION["cart_item"][$k]["quantity"] += $getQuantity;
							}
						}
					} else {
						$_SESSION["cart_item"] = $_SESSION["cart_item"] + $itemArray;
					}
				} else {
					$_SESSION["cart_item"] = $itemArray;
				}
			}
			break;
				
			case "remove":
			if(!empty($_SESSION["cart_item"])) {
				foreach($_SESSION["cart_item"] as $k => $v) {
					if($getId == $v['dishes_id'])
						unset($_SESSION["cart_item"][$k]);
				}
			}
			break;
					
			case "empty":
			unset($_SESSION["cart_item"]);
			break;
					
			case "check":
			header("location:checkout.php");
			break;
		}
	}
?>