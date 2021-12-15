<?php
require_once(realpath(dirname(__FILE__) . '/defuse-crypto.phar'));

use Defuse\Crypto\Key as DefuseKey;

use Defuse\Crypto\Crypto as DefuseCrypto;

use Defuse\Crypto\KeyProtectedByPassword as DefusePassword;

class DefuseLib  {

	const bytes 	= '80bef0124333e514677752767d69fc8a';
	const key = 'def00000e014a628062963a81acf024d078c727c44b8d31dad6e5e1a95b706cd09036f4d104db59b005f3af724362c257205b7fe643575207467877475b9ba0abaa89a4c';


	public static function getConfig(){
    	return DefuseKey::loadFromAsciiSafeString(self::key);
	}

	public static function generateKey(){
		return  DefuseKey::createNewRandomKey()->saveToAsciiSafeString();
	}

	public static function encrypt($string){
		$key 	= self::getConfig();
		$result = DefuseCrypto::encrypt($string, $key);
		return $result;
	}

	public static function decrypt($string){

		$key 	= self::getConfig();

		try {
    		$secret_data = DefuseCrypto::decrypt($string, $key);
    		return $secret_data;
		} catch (\Defuse\Crypto\Exception\WrongKeyOrModifiedCiphertextException $ex) {
		    return;
		}
	}

}
