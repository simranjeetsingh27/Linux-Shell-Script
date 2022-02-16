findWinnerByComparingToComputerChoice() {
    computerChoice=$1
    computerWinningOption=$2
    userName="$3"
    if [ "$computerChoice" == "$computerWinningOption" ]
    then
        result="COMPUTER"
    else
        result="$userName"
    fi
    echo $result
}

findWinnerForPaperByComparingToComputerChoice() {
    computerChoice=$1
    userName="$2"
    if [ "$computerChoice" == "Scissor" ]
    then
        result="COMPUTER"
    else
        result="$userName"
    fi
    echo $result
}

findWinnerForScissorByComparingToComputerChoice() {
    computerChoice=$1
    userName="$2"
    if [ "$computerChoice" == "Rock" ]
    then
        result="COMPUTER"
    else
        result="$userName"
    fi
    echo $result
}

findWinnerForRockByComparingToComputerChoice() {
    computerChoice=$1
    userName="$2"
    if [ "$computerChoice" == "Paper" ]
    then
        result="COMPUTER"
    else
        result="$userName"
    fi
    echo $result
}

function findWinner() {
    yourchoice=$1
    computerChoice=$2
    userName="$3"

    result="TIE"

    if [ "$yourchoice" == "$computerChoice" ]
    then
        result="TIE"
    else
        case $yourchoice in
        Paper)
            echo "Comparing for Paper"
            # result=`findWinnerForPaperByComparingToComputerChoice $computerChoice "$userName"`
            result=`findWinnerByComparingToComputerChoice $computerChoice Scissor "$userName"`
        ;;
        Scissor)
            echo "Comparing for Scissor"
            # result=`findWinnerForScissorByComparingToComputerChoice $computerChoice "$userName"`
            result=`findWinnerByComparingToComputerChoice $computerChoice Rock "$userName"`
        ;;
        Rock)
            echo "Comparing for Rock"
            # result=`findWinnerForRockByComparingToComputerChoice $computerChoice "$userName"` 
            result=`findWinnerByComparingToComputerChoice $computerChoice Paper "$userName"`
        ;;
        esac
    fi
    echo $result
}


function getComputerChoice() {
    arr[0]="Paper"
    arr[1]="Rock"
    arr[2]="Scissor"

    rand=$[ $RANDOM % 3 ]
    echo ${arr[$rand]}
}