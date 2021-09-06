num1=$1
num2=$2
kelvin=$(echo "$1 + 273.15" | bc)
multplies=$(echo "${kelvin} * ${num2}" | bc)
celsius=$(echo "${multplies} - 273.15" | bc)
echo $celsius
