read -p "Enter a string: " input_string

reversed_string=""
length=${#input_string}
index=$((length - 1))

while [ $index -ge 0 ]; do
    reversed_string="${reversed_string}${input_string:$index:1}"
    index=$((index - 1))
done

echo "Reversed string: $reversed_string"

