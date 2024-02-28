while true; do
    read -p "Participante 1: " message
    echo "$message" > participante1_pipe
    if [ "$message" == "exit" ]; then
        break
    fi
    received_message=$(cat participante2_pipe)
    echo "Participante 2: $received_message"
done
