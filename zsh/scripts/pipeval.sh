
echoRun() {
    echo "> $1"
    eval $1
}

comms=()
args=()
foundMark=0
for arg in "$@"; do
    if [ $arg = "{" ]; then
        foundMark=1
    fi
    if [ $arg = "[" ]; then
        foundMark=2
    fi
    if [ $foundMark = 0 ]; then
        comms+=($arg)
    fi
    if [ $arg != "{" ] && [ $arg != "[" ] && [ $foundMark != 0 ]; then
        args+=($arg)
    fi
done


for com in "${comms[@]}"; do
    if [ $foundMark -eq 2 ]; then
        for singleArg in "${args[@]}"; do
            eval $com $singleArg
        done
    fi
    if [ $foundMark -eq 1 ]; then
        eval $com ${args[@]}
    fi
done


