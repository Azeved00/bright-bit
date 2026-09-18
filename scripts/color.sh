
# 0 default (reset)
# 1 bright
# 2 darker text
# 3 
# 4 underline text
# 5 flashing text

# 30 to 37 foreground colors
# 40 to 47 background colors

check_colors(){
    for c in {0,2,4,6}; do 
        for i in {30..37}; do
            for j in {40..47}; do
                printf "\e[${c};${i};${j}m aBc "
                printf "\e[0m"
            done;

            for j in {40..47}; do
                printf "\e[${c+1};${i};${j}m aBc "
                printf "\e[0m"
            done;
            printf "\n"
        done;
        printf "\n"
    done;
}
