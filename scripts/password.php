<?php
echo substr(str_shuffle('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghiklmnopqrstuvwxyz1234567890~!@#$%^&*()_+-='), 0, !empty($argv[1]) ? $argv[1] : 32) ."\n";
