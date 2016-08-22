#!/usr/bin/php
<?php
function generateUUID()
{
    $data = openssl_random_pseudo_bytes(16);
    $data[6] = chr(ord($data[6]) & 0x0f | 0x40); // set version to 0100
    $data[8] = chr(ord($data[8]) & 0x3f | 0x80); // set bits 6-7 to 10
    return vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex($data), 4));
}
function random_string($length)
{
   $bytes = openssl_random_pseudo_bytes($length);
   return crypt(bin2hex($bytes), bin2hex(openssl_random_pseudo_bytes($length /2)));
}
function password($length)
{
	return str_replace('/','',crypt(random_string($length), random_string($length)));
}
function usable_password($length)
{
	return trim(password($length),'.');
}
function crypt_password($length)
{
	return usable_password($length) . usable_password($length) . usable_password($length);
}
//$arguments = array_splice($argv, 1, count($argv) - 1);
list($command, $length) = $argv;
echo crypt_password($length), crypt_password($length), "\n";
