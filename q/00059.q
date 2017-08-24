// 59. XOR decryption

/for xor
\l util.q

/read ciphertext
cipher: first read0 `:../resources/p059_cipher.txt;
/split on comma and cast to longs
cipher:"J"$","vs cipher;
/we know the key is 3 chars, solve per cryptopals
KEY_LENGTH:3;
/solve per cryptopals set 1, challenge 6
k:raze {where w=max w:{count x inter .Q.a,.Q.A,.Q.n," .,"}each(flip{(raze"c"${xor[x;y]}[x]each 0+til 256)}each(KEY_LENGTH cut cipher)[;x])}each til KEY_LENGTH;
/k is (103 111 100) -> "god";
sum (count[cipher]#k)xor'cipher
/107359