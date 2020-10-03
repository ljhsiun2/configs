alias fd='fdfind'
alias battery='upower -i `upower -e | rg battery`'
function cd_up() {
    cd $(printf "%0.s../" $(seq 1 $1));
}
alias up='cd_up'
