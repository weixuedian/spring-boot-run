echo >>>>>>>>>>>>'date'<<<<<<<<<<<<<<<<<<<<<

echo ">>>>>>>>>>>>>>>>>>>start set hosts <<<<<<<<<<<"
    cp /etc/hosts /etc/hosts.temp
    sed -i "s/.*$(hostname)/${ip} $(hostname)/" /etc/hosts.temp
    cat /etc/hosts.temp > /etc/hosts
    cat /etc/hosts
echo ">>>>>>>>>>>>>>>>>>>>end set hosts >>>>>>>>>>>"
    
java-jar  usr/app/app.jar