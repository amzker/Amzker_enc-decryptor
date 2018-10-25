 
while read p; do
    echo $p | openssl aes-256-cbc -d -a -in file.txt -out decrypted.txt -pass stdin > /dev/null
    if [ $? -eq 0 ] ; then
      echo $p
      exit
    fi  
  done <   'libs/rockyou.txt' 
