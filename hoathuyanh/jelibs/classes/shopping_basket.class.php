<?php
/*
 * SHOPPING BASKET CLASS USAGE: 
 * ------ 
$cart = new ShoppingBasket; Initialize class 
$cart->SaveCookie(TRUE); Set option to save items ina cookie or not. Cookie valid for 1 day. 
$cart->AddToBasket('ITEM_ID', QTY); Add an item to the basket  
$cart->RemoveFromBasket('ITEM_ID', QTY); Remove item form basket 
$cart->DeleteFromBasket('ITEM_ID'); Removes all of item selected 
$cart->EmptyBasket('ITEM_ID' QTY); Clear the basket 
$cart->GetBasketQty(); Get qty of items in the basket 
$cart->GetBasket(); Returns basket items as an array ITEM_ID => QTY 
 */

/**
 * ShoppingBasket
 *
 * A simple shopping basket class used to add and delete items from a session based shopping cart
 * 
 * @package ShoppingBasket
 * @author Dave Nicholson <dave@davenicholson.co.uk>
 * @link http://davenicholson.co.uk
 * @copyright 2008
 * @version 0.1
 * @access public
 */
class ShoppingBasket {
	public $cookieName = 'ckBasket';
	public $cookieExpire = 86400; // One day
	public $saveCookie = TRUE;
	
	protected $session;
	protected $cookie;
	
	/**
	 * ShoppingBasket::__construct()
	 *
	 * Construct function. Parses cookie if set.
	 * 
	 * @return
	 *
	 */
	function __construct() {
// 		session_start ();

		$this->session = JFactory::getSession();
		
		$jInput = JFactory::getApplication()->input;		
		$this->cookie = $jInput->cookie;
		
		if (! isset ( $_SESSION ['cart'] ) && (isset ( $_COOKIE [$this->cookieName] ))) {
			$_SESSION ['cart'] = unserialize ( base64_decode ( $_COOKIE [$this->cookieName] ) );
		}
	}
	
	/**
	 * ShoppingBasket::AddToBasket()
	 *
	 * Adds item to basket. If $id already exists in array then qty updated
	 * 
	 * @param mixed $id
	 *        	- ID of item
	 * @param integer $qty
	 *        	- Qty of items to be added to cart
	 * @return bool
	 */
	function addToBasket($id, $qty = 1, $update = true) {
		if (isset ( $_SESSION ['cart'] [$id] ) && !$update) {
			$_SESSION ['cart'] [$id] = $_SESSION ['cart'] [$id] + $qty;
		} else {
			$_SESSION ['cart'] [$id] = $qty;
		}
		$this->SetCookie ();
		return true;
	}
	
	/**
	 * ShoppingBasket::RemoveFromBasket()
	 *
	 * Removes item from basket. If final qty less than 1 then item deleted.
	 * 
	 * @param mixed $id
	 *        	- Id of item
	 * @param integer $qty
	 *        	- Qty of items to be removed to cart
	 * @see DeleteFromBasket()
	 * @return bool
	 */
	function removeFromBasket($id, $qty = 1, $update = true) {
		if (isset ( $_SESSION ['cart'] [$id] ) && $update) {
			$_SESSION ['cart'] [$id] = $_SESSION ['cart'] [$id] - $qty;
		}
		
		if ($_SESSION ['cart'] [$id] <= 0 || !$update) {
			$this->deleteFromBasket ( $id );
		}
		
		$this->SetCookie ();
		return true;
		exit ();
	}
	
	/**
	 * ShoppingBasket::DeleteFromBasket()
	 *
	 * Completely removes item from basket
	 * 
	 * @param mixed $id        	
	 * @return bool
	 */
	function deleteFromBasket($id) {
		unset ( $_SESSION ['cart'] [$id] );
		$this->SetCookie ();
		return true;
		exit ();
	}
	
	/**
	 * ShoppingBasket::GetBasket()
	 *
	 * Returns the basket session as an array of item => qty
	 * 
	 * @return array $itemArray
	 */
	function getBasket($id = 0) {
		if (isset ( $_SESSION ['cart'] )) {
			foreach ( $_SESSION ['cart'] as $k => $v ) {
				$itemArray [$k] = $v;
			}
			
			if ($id)
				return array($id => $itemArray[$id]);
			else 
				return $itemArray;
			exit ();
		} else {
			return false;
		}
	}
	
	/**
	 * ShoppingBasket::UpdateBasket()
	 *
	 * Updates a basket item with a specific qty
	 * 
	 * @param mixed $id
	 *        	- ID of item
	 * @param mixed $qty
	 *        	- Qty of items in basket
	 * @return bool
	 */
	function updateBasket($id, $qty) {
		$qty = ($qty == '') ? 0 : $qty;
		
		if (isset ( $_SESSION ['cart'] [$id] )) {
			$_SESSION ['cart'] [$id] = $qty;
			
			if ($_SESSION ['cart'] [$id] <= 0) {
				$this->DeleteItem ( $id );
				return true;
				exit ();
			}
			$this->SetCookie ();
			return true;
			exit ();
		} else {
			return false;
		}
	}
	
	/**
	 * ShoppingBasket::GetBasketQty()
	 *
	 * Returns the total amount of items in the basket
	 * 
	 * @return int quantity of items in basket
	 */
	function getBasketQty() {
		if (isset ( $_SESSION ['cart'] )) {
			$qty = 0;
			foreach ( $_SESSION ['cart'] as $item ) {
				$qty = $qty + $item;
			}
			return $qty;
		} else {
			return 0;
		}
	}
	
	/**
	 * ShoppingBasket::EmptyBasket()
	 *
	 * Completely removes the basket session
	 * 
	 * @return
	 *
	 */
	function emptyBasket() {
		unset ( $_SESSION ['cart'] );
		$this->SetCookie ();
		return true;
	}
	
	/**
	 * ShoppingBasket::SetCookie()
	 *
	 * Creates cookie of basket items
	 * 
	 * @return bool
	 */
	function setCookie() {
		if ($this->saveCookie) {
			$string = base64_encode ( serialize ( $_SESSION ['cart'] ) );
			setcookie ( $this->cookieName, $string, time () + $this->cookieExpire, '/' );
			return true;
		}
		
		return false;
	}
	
	/**
	 * ShoppingBasket::SaveCookie()
	 *
	 * Sets save cookie option
	 * 
	 * @param bool $bool        	
	 * @return bool
	 */
	function saveCookie($bool = TRUE) {
		$this->saveCookie = $bool;
		return true;
	}
}