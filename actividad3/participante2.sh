while true; do
    read -p "Participante 2: " message
    echo "$message" > participante2_pipe
    if [ "$message" == "exit" ]; then
        break
    fi
    received_message=$(cat participante1_pipe)
    echo "Participante 1: $received_message"
done
