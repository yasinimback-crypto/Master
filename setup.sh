#!/data/data/com.termux/files/usr/bin/bash

# ═══════════════════════════════════════════════════════════════════
#   MASTER MULTICOLOR CYBERPUNK TERMINAL v10.0 - ULTRA NO-API EDITION
# ═══════════════════════════════════════════════════════════════════

NC='\033[0m'; BOLD='\033[1m'; DIM='\033[2m'
G='\033[38;5;46m'; DG='\033[38;5;28m'; W='\033[1;37m'
C='\033[38;5;51m'; Y='\033[38;5;226m'; M='\033[38;5;201m'

TW=$(tput cols 2>/dev/null || echo 60)

# ── Intro & Dependencies ──────────────────
clear
echo -e "${G}${BOLD}[+] INJECTING LIVE CYBER OS ENGINES...${NC}\n"

# এখানে termux-api সম্পূর্ণ বাদ দেওয়া হয়েছে
for p in zsh git ncurses-utils curl termux-tools iproute2 sed awk grep; do
    pkg install -y -q "$p" 2>/dev/null
done

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    git clone --depth=1 -q https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh" 2>/dev/null
fi

_pl() {
    if [ ! -d "${ZSH_CUSTOM}/plugins/$1" ]; then
        git clone --depth=1 -q "$2" "${ZSH_CUSTOM}/plugins/$1" 2>/dev/null
    fi
}
_pl zsh-autosuggestions          https://github.com/zsh-users/zsh-autosuggestions
_pl zsh-syntax-highlighting      https://github.com/zsh-users/zsh-syntax-highlighting
_pl zsh-history-substring-search https://github.com/zsh-users/zsh-history-substring-search

# ── ASCII Font ────────────────────────────
cat > "$HOME/.ascii_font.txt" << 'FONTEOF'
A
░█████╗░
██╔══██╗
███████║
██╔══██║
██║░░██║
╚═╝░░╚═╝

B
██████╗░
██╔══██╗
██████╔╝
██╔══██╗
██████╔╝
╚═════╝░

C
░█████╗░
██╔══██╗
██║░░╚═╝
██║░░██╗
╚█████╔╝
░╚════╝░

D
██████╗░
██╔══██╗
██║░░██║
██║░░██║
██████╔╝
╚═════╝░

E
███████╗
██╔════╝
█████╗░░
██╔══╝░░
███████╗
╚══════╝

F
███████╗
██╔════╝
█████╗░░
██╔══╝░░
██║░░░░░
╚═╝░░░░░

G
░██████╗░
██╔════╝░
██║░░██╗░
██║░░╚██╗
╚██████╔╝
░╚═════╝░

H
██╗░░██╗
██║░░██║
███████║
██╔══██║
██║░░██║
╚═╝░░╚═╝

I
██╗
██║
██║
██║
██║
╚═╝

J
░░░░░██╗
░░░░░██║
░░░░░██║
██╗░░██║
╚█████╔╝
░╚════╝░

K
██╗░░██╗
██║░██╔╝
█████╔═╝░
██╔═██╗░░
██║░╚██╗░
╚═╝░░╚═╝░

L
██╗░░░░░
██║░░░░░
██║░░░░░
██║░░░░░
███████╗
╚══════╝

M
███╗░░░███╗
████╗░████║
██╔████╔██║
██║╚██╔╝██║
██║░╚═╝░██║
╚═╝░░░░░╚═╝

N
███╗░░██╗
████╗░██║
██╔██╗██║
██║╚████║
██║░╚███║
╚═╝░░╚══╝

O
░█████╗░
██╔══██╗
██║░░██║
██║░░██║
╚█████╔╝
░╚════╝░

P
██████╗░
██╔══██╗
██████╔╝
██╔═══╝░
██║░░░░░
╚═╝░░░░░

Q
░██████╗░
██╔═══██╗
██║██╗██║
╚██████╔╝
░╚═██╔═╝░
░░░╚═╝░░░

R
██████╗░
██╔══██╗
██████╔╝
██╔══██╗
██║░░██║
╚═╝░░╚═╝

S
░██████╗
██╔════╝
╚█████╗░
░╚═══██╗
██████╔╝
╚═════╝░

T
████████╗
╚══██╔══╝
░░░██║░░░
░░░██║░░░
░░░██║░░░
░░░╚═╝░░░

U
██╗░░░██╗
██║░░░██║
██║░░░██║
██║░░░██║
╚██████╔╝
░╚═════╝░

V
██╗░░░██╗
╚██╗░██╔╝
░╚████╔╝░
░░╚██╔╝░░
░░░██║░░░
░░░╚═╝░░░

W
██╗░░░░░░░██╗
╚██╗░░██╗░██╔╝
░╚████╔═████║░
░░╚██╔╝░╚██╔╝░
░░░██║░░░██║░░
░░░╚═╝░░░╚═╝░░

X
██╗░░██╗
╚██╗██╔╝
░╚███╔╝░
░██╔██╗░
██╔╝╚██╗
╚═╝░░╚═╝

Y
██╗░░░██╗
╚██╗░██╔╝
░╚████╔╝░
░░╚██╔╝░░
░░░██║░░░
░░░╚═╝░░░

Z
███████╗
╚═══██╔╝
░░░██╔╝░
░░██╔╝░░
░███████╗
░╚══════╝

SPACE

FONTEOF

# ── 15 Premium HUD Prompt Designs (Updated) ──
cat > "$HOME/.prompt_designs.txt" << 'PROMPTEOF'
1|╭─❨ _USER_ ❩──❨ %~ ❩──❨ _TIME_ ❩|╰──❯❯❯
2|┌─[ _USER_ ][ %~ ][ _TIME_ ]|└──❯❯❯
3|( _USER_ )─( ~ )─( _TIME_ )|❯❯❯
4|╔══[ _USER_ ]══[ %~ ]|╚══❯❯❯
5|┏━ _USER_ ━ %~ ━┓|┗━❯❯❯
6|☠ _USER_ ☠ %~ ☠ _TIME_|☠❯❯❯
7|⚡ _USER_ ⚡ %~|⚡❯❯❯
8|█▓▒░ _USER_ ░▒▓ %~|█▓▒░❯❯❯
9|🪐 [ _USER_ ] ──❯|❯❯
10|☣ _USER_ ☣ [ %~ ]|☣❯❯❯
11|🎯 ❪ _USER_ ❫ ── [ %~ ]|❯
12|🌌 〖 _USER_ 〗 ── 〖 _TIME_ 〗|🎨 ❯❯
13|─┤ _USER_ ├─┤ %~ ├─|─❯
14|🔮 〖 Mainframe: _USER_ 〗|🔮 ❯
15|◢◤ _USER_ ◢◤ %~|◥◣ ❯❯❯
PROMPTEOF

# ── User Setup ────────────────────────────
echo -e "  ${G}${BOLD}Enter Username for Mainframe:${NC}"
echo -en "  ${G}>> ${NC}"
read -r USER_NAME
if [ -z "$USER_NAME" ]; then 
    USER_NAME="${USER:-ARIYAN}"
fi
USER_NAME=$(echo "$USER_NAME" | tr '[:lower:]' '[:upper:]')
echo "$USER_NAME" > "$HOME/.terminal_username"

# ── 15 Custom Style Select ────────────────
clear
echo -e "\n  ${G}${BOLD}◤ CHOOSE YOUR HUD PROMPT STYLES (TOTAL 15) ◢${NC}\n"
while IFS='|' read -r num line1 line2; do
    d1=$(echo "$line1" | sed "s/_USER_/$USER_NAME/g" | sed "s/_TIME_/20:45/g")
    printf "  ${G}[%02d]${W} %s${NC}\n" "$num" "$d1"
done < "$HOME/.prompt_designs.txt"

echo -en "\n  ${G}${BOLD}Select Input Style (1-15): ${NC}"
read -r PROMPT_NUM
if ! [[ "$PROMPT_NUM" =~ ^([1-9]|1[0-5])$ ]]; then PROMPT_NUM=3; fi

SELECTED_PROMPT=$(grep "^$PROMPT_NUM|" "$HOME/.prompt_designs.txt")
PROMPT_LINE1_TEMPLATE=$(echo "$SELECTED_PROMPT" | cut -d'|' -f2)
PROMPT_LINE2_TEMPLATE=$(echo "$SELECTED_PROMPT" | cut -d'|' -f3)

# ── Live Animated Matrix Banner ───────────
cat > "$HOME/.terminal_banner.sh" << 'BEOF'
#!/data/data/com.termux/files/usr/bin/bash

NC='\033[0m'; BOLD='\033[1m'; DIM='\033[2m'
TW=$(tput cols 2>/dev/null || echo 60)

GREENS=("46" "47" "48" "82" "83" "118" "154" "190")
G1="\033[38;5;${GREENS[$((RANDOM % ${#GREENS[@]}))]}m"
G2="\033[38;5;28m" 
W="\033[1;37m"

UNAME=$(cat "$HOME/.terminal_username" 2>/dev/null || echo "ARIYAN")
FONT_FILE="$HOME/.ascii_font.txt"

_matrix_animation() {
    local chars="ｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜﾝ1234567890$%"
    clear
    for ((r=0; r<6; r++)); do
        local line=""
        for ((c=0; c<(TW/2); c++)); do
            local char="${chars:$((RANDOM % ${#chars})):1}"
            if (( RANDOM % 5 == 0 )); then
                line+="\033[38;5;46m${char} \033[0m"
            else
                line+="\033[38;5;28m${char} \033[0m"
            fi
        done
        echo -e "  ${line}"
        sleep 0.04
    done
}

_ascii_art() {
    local text="$1" font_file="$2"
    declare -A CHAR_MAP
    local current_char="" lines=() reading=false
    while IFS= read -r line; do
        if [[ "$line" =~ ^[A-Z]$ ]] && [ ${#line} -eq 1 ]; then
            [ -n "$current_char" ] && CHAR_MAP["$current_char"]=$(printf '%s\n' "${lines[@]}")
            current_char="$line"; lines=(); reading=true
        elif [[ "$line" == "SPACE" ]]; then
            [ -n "$current_char" ] && CHAR_MAP["$current_char"]=$(printf '%s\n' "${lines[@]}")
            current_char=" "; lines=(); reading=true
        elif [ "$reading" = true ] && [ -z "$line" ] && [ -n "$current_char" ]; then
            CHAR_MAP["$current_char"]=$(printf '%s\n' "${lines[@]}")
            current_char=""; lines=(); reading=false
        elif [ "$reading" = true ] && [ -n "$line" ]; then
            lines+=("$line")
        fi
    done < "$font_file"
    [ -n "$current_char" ] && CHAR_MAP["$current_char"]=$(printf '%s\n' "${lines[@]}")
    
    local result_lines=()
    for ((i=0; i<6; i++)); do
        local combined_line=""
        for ((j=0; j<${#text}; j++)); do
            local char="${text:$j:1}"
            if [ -n "${CHAR_MAP[$char]}" ]; then
                local char_lines=()
                IFS=$'\n' read -rd '' -a char_lines <<< "${CHAR_MAP[$char]}"
                [ $i -lt ${#char_lines[@]} ] && combined_line+="${char_lines[$i]} "
            else
                combined_line+="      "
            fi
        done
        result_lines+=("$combined_line")
    done
    for line in "${result_lines[@]}"; do echo "$line"; done
}

_matrix_animation

echo -e "${G1} ═════════════════════════════════════════════════════${NC}"

if [ -f "$FONT_FILE" ]; then
    ascii_output=$(_ascii_art "$UNAME" "$FONT_FILE")
    while IFS= read -r line; do
        if [ -n "$line" ]; then
            pad=$(( (TW - ${#line}) / 2 ))
            [ $pad -lt 0 ] && pad=0
            printf "%${pad}s" ""
            echo -e "${G1}${BOLD}${line}${NC}"
        fi
    done <<< "$ascii_output"
fi

SUB="* MULTICOLOR CYBERPUNK TERMINAL *"
pad=$(( (TW - ${#SUB}) / 2 ))
printf "%${pad}s" ""
echo -e "${G1}${BOLD}${SUB}${NC}"
echo -e "${G1} ═════════════════════════════════════════════════════${NC}\n"

DATE_V=$(date +"%d %B %Y  ·  %A")
TIME_V=$(date +"%I:%M:%S %p")
STOR_V=$(df -h "$HOME" 2>/dev/null | awk 'NR==2{print $4" free / "$2}' || echo "N/A")
RAM_V=$(free -m 2>/dev/null | awk 'NR==2{printf "%d/%d MB Used", $3, $2}' || echo "N/A")

# [NO-API TEMPERATURE SYSTEM] termux-api ছাড়া ইন্টারনাল সিস্টেম ফাইল থেকে সরাসরি তাপমাত্রা রিড করা
TEMP_V=""
for f in /sys/class/power_supply/battery/temp /sys/class/power_supply/battery/temperature /sys/class/thermal/thermal_zone0/temp; do
    if [ -f "$f" ]; then
        t_val=$(cat "$f" 2>/dev/null)
        if [ -n "$t_val" ] && [ "$t_val" -gt 0 ]; then
            # কিছু ডিভাইসে মান ১০ গুণ বা ১০০০ গুণ বড় দেখায়, তা ফিক্স করা
            if (( t_val > 1000 )); then
                TEMP_V=$(awk "BEGIN {printf \"%.1f°C\", $t_val/1000}")
            elif (( t_val > 100 )); then
                TEMP_V=$(awk "BEGIN {printf \"%.1f°C\", $t_val/10}")
            else
                TEMP_V="${t_val}.0°C"
            fi
            break
        fi
    fi
done
[ -z "$TEMP_V" ] && TEMP_V="34.2°C" # ফলব্যাক সেফ ভ্যালু

IP_V=$(ip route get 1.1.1.1 2>/dev/null | grep -oP 'src \K\S+' || echo "Online")
[ -z "$IP_V" ] && IP_V="Online"

BW=$((TW - 4))
[ $BW -gt 60 ] && BW=60
VAL_W=$((BW - 16))

echo -e "  ${G2}╭$(printf '─%.0s' $(seq 1 $BW))╮${NC}"
printf "  ${G2}│${NC}  ${G1}📅${NC} DATE     │ %-${VAL_W}s ${G2}│\n" "${DATE_V}"
printf "  ${G2}│${NC}  ${G1}⏰${NC} TIME     │ %-${VAL_W}s ${G2}│\n" "${TIME_V}"
printf "  ${G2}│${NC}  ${G1}🌡️${NC} TEMP     │ %-${VAL_W}s ${G2}│\n" "${TEMP_V}"
echo -e "  ${G2}├$(printf '─%.0s' $(seq 1 $BW))┤${NC}"
printf "  ${G2}│${NC}  ${G1}🌐${NC} NETWORK  │ %-${VAL_W}s ${G2}│\n" "${IP_V}"
printf "  ${G2}│${NC}  ${G1}💾${NC} STORAGE  │ %-${VAL_W}s ${G2}│\n" "${STOR_V}"
printf "  ${G2}│${NC}  ${G1}🧠${NC} MEMORY   │ %-${VAL_W}s ${G2}│\n" "${RAM_V}"
echo -e "  ${G2}╰$(printf '─%.0s' $(seq 1 $BW))╯${NC}"

echo -e "\n\t${G2}${DIM}* chmod 777 ambitions. *${NC}\n"
BEOF

chmod +x "$HOME/.terminal_banner.sh"

# ── .zshrc Config Generation ────────────────
PROMPT_LINE1_FINAL=$(echo "$PROMPT_LINE1_TEMPLATE" | sed 's/_USER_/%F{46}%B${_TERM_USER}%b%f/g' | sed 's/_TIME_/%F{118}%D{%H:%M}%f/g')
PROMPT_LINE2_FINAL=$(echo "$PROMPT_LINE2_TEMPLATE")

cat > "$HOME/.zshrc" << ZEOF
export ZSH="\$HOME/.oh-my-zsh"
export TERM="xterm-256color"
export COLORTERM="truecolor"
ZSH_THEME=""

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)
[ -f "\$ZSH/oh-my-zsh.sh" ] && source "\$ZSH/oh-my-zsh.sh"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=237,bold'
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=46,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=48,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=118,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=82,bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=154,underline'
ZSH_HIGHLIGHT_STYLES[comment]='fg=240,italic'

_TERM_USER=\$(cat "\$HOME/.terminal_username" 2>/dev/null || echo "ARIYAN")
setopt PROMPT_SUBST

typeset -A _BOLDMAP
_BOLDMAP=(A 𝐀 B 𝐁 C 𝐂 D 𝐃 E 𝐄 F 𝐅 G 𝐆 H 𝐇 I 𝐈 J 𝐉 K 𝐊 L 𝐋 M 𝐌 N 𝐍 O 𝐎 P 𝐏 Q 𝐐 R 𝐑 S 𝐒 T 𝐓 U 𝐔 V 𝐕 W 𝐖 X 𝐗 Y 𝐘 Z 𝐙 0 𝟎 1 𝟏 2 𝟐 3 𝟑 4 𝟒 5 𝟓 6 𝟔 7 𝟕 8 𝟖 9 𝟗)

_to_bold_caps() {
    local input="\${(U)1}" out="" ch
    for (( i=1; i<=\${#input}; i++ )); do
        ch="\${input[\$i]}"
        [[ -n "\${_BOLDMAP[\$ch]}" ]] && out+="\${_BOLDMAP[\$ch]}" || out+="\$ch"
    done
    echo "\$out"
}

_folder_icon_box() {
    local cur="\$PWD" home="\$HOME" disp icon w inw border pad content
    w=\${COLUMNS:-\$(tput cols 2>/dev/null || echo 60)}
    (( w > 60 )) && w=60
    (( w < 20 )) && w=20
    inw=\$(( w - 2 ))
    [ "\$cur" = "\$home" ] && { disp="~"; icon="⌂"; } || { disp="\${cur/#\$home/~}"; icon="❐"; }
    
    border=\$(printf '─%.0s' \$(seq 1 \$inw))
    content="  \033[38;5;46m\033[1m\${icon}\033[0m  \033[38;5;252m-- \${disp}\033[0m"
    pad=\$(( inw - \${#disp} - 7 ))
    (( pad < 1 )) && pad=1

    echo -e "\033[38;5;28m╭\${border}╮\033[0m"
    printf "\033[38;5;28m│\033[0m%b" "\${content}"
    printf '%*s' "\${pad}" ""
    echo -e "\033[38;5;46m\033[1m✔\033[0m \033[38;5;28m│\033[0m"
    echo -e "\033[38;5;28m╰\${border}╯\033[0m"

    local bold_txt="\$(_to_bold_caps "cd \${disp}")"
    echo -e "\033[38;5;46m\033[1m⏤꯭֯\${_TERM_USER}⃪꯭̽ᷝ✮͢𓆩\${bold_txt}𓆪-:)👽💚\033[0m"
}
autoload -Uz add-zsh-hook
add-zsh-hook chpwd _folder_icon_box

PROMPT='${PROMPT_LINE1_FINAL}
%F{28}%B${PROMPT_LINE2_FINAL} %b%f'

alias cls='clear && bash ~/.terminal_banner.sh'
alias banner='bash ~/.terminal_banner.sh'
alias reload='source ~/.zshrc'
alias ..='cd ..'

[ -f "\$HOME/.terminal_banner.sh" ] && bash "\$HOME/.terminal_banner.sh"
_folder_icon_box

if [ "\$SHELL" != "/data/data/com.termux/files/usr/bin/zsh" ]; then
    chsh -s zsh
fi
ZEOF

echo -e "\n  ${G}[✔] COMPLETE PRE-CONFIG DONE! PLEASE RESTART TERMUX.${NC}"
J
░░░░░██╗
░░░░░██║
░░░░░██║
██╗░░██║
╚█████╔╝
░╚════╝░

K
██╗░░██╗
██║░██╔╝
█████╔═╝░
██╔═██╗░░
██║░╚██╗░
╚═╝░░╚═╝░

L
██╗░░░░░
██║░░░░░
██║░░░░░
██║░░░░░
███████╗
╚══════╝

M
███╗░░░███╗
████╗░████║
██╔████╔██║
██║╚██╔╝██║
██║░╚═╝░██║
╚═╝░░░░░╚═╝

N
███╗░░██╗
████╗░██║
██╔██╗██║
██║╚████║
██║░╚███║
╚═╝░░╚══╝

O
░█████╗░
██╔══██╗
██║░░██║
██║░░██║
╚█████╔╝
░╚════╝░

P
██████╗░
██╔══██╗
██████╔╝
██╔═══╝░
██║░░░░░
╚═╝░░░░░

Q
░██████╗░
██╔═══██╗
██║██╗██║
╚██████╔╝
░╚═██╔═╝░
░░░╚═╝░░░

R
██████╗░
██╔══██╗
██████╔╝
██╔══██╗
██║░░██║
╚═╝░░╚═╝

S
░██████╗
██╔════╝
╚█████╗░
░╚═══██╗
██████╔╝
╚═════╝░

T
████████╗
╚══██╔══╝
░░░██║░░░
░░░██║░░░
░░░██║░░░
░░░╚═╝░░░

U
██╗░░░██╗
██║░░░██║
██║░░░██║
██║░░░██║
╚██████╔╝
░╚═════╝░

V
██╗░░░██╗
╚██╗░██╔╝
░╚████╔╝░
░░╚██╔╝░░
░░░██║░░░
░░░╚═╝░░░

W
██╗░░░░░░░██╗
╚██╗░░██╗░██╔╝
░╚████╔═████║░
░░╚██╔╝░╚██╔╝░
░░░██║░░░██║░░
░░░╚═╝░░░╚═╝░░

X
██╗░░██╗
╚██╗██╔╝
░╚███╔╝░
░██╔██╗░
██╔╝╚██╗
╚═╝░░╚═╝

Y
██╗░░░██╗
╚██╗░██╔╝
░╚████╔╝░
░░╚██╔╝░░
░░░██║░░░
░░░╚═╝░░░

Z
███████╗
╚═══██╔╝
░░░██╔╝░
░░██╔╝░░
░███████╗
░╚══════╝

SPACE

FONTEOF

# ── 10 Premium HUD Prompt Designs ──────────
cat > "$HOME/.prompt_designs.txt" << 'PROMPTEOF'
1|╭─❨ _USER_ ❩──❨ %~ ❩──❨ _TIME_ ❩|╰──❯❯❯
2|┌─[ _USER_ ][ %~ ][ _TIME_ ]|└──❯❯❯
3|( _USER_ )─( ~ )─( _TIME_ )|❯❯❯
4|╔══[ _USER_ ]══[ %~ ]|╚══❯❯❯
5|┏━ _USER_ ━ %~ ━┓|┗━❯❯❯
6|☠ _USER_ ☠ %~ ☠ _TIME_|☠❯❯❯
7|⚡ _USER_ ⚡ %~|⚡❯❯❯
8|█▓▒░ _USER_ ░▒▓ %~|█▓▒░❯❯❯
9|🪐 [ _USER_ ] ──❯|❯❯
10|☣ _USER_ ☣ [ %~ ]|☣❯❯❯
PROMPTEOF

# ── User Setup ────────────────────────────
echo -e "  ${G}${BOLD}Enter Username for Mainframe:${NC}"
echo -en "  ${G}>> ${NC}"
read -r USER_NAME
if [ -z "$USER_NAME" ]; then 
    USER_NAME="${USER:-ARIYAN}"
fi
USER_NAME=$(echo "$USER_NAME" | tr '[:lower:]' '[:upper:]')
echo "$USER_NAME" > "$HOME/.terminal_username"

# ── 10 Custom Style Select ────────────────
clear
echo -e "\n  ${G}${BOLD}◤ CHOOSE YOUR HUD PROMPT STYLES (TOTAL 10) ◢${NC}\n"
while IFS='|' read -r num line1 line2; do
    d1=$(echo "$line1" | sed "s/_USER_/$USER_NAME/g" | sed "s/_TIME_/20:45/g")
    printf "  ${G}[%02d]${W} %s${NC}\n" "$num" "$d1"
done < "$HOME/.prompt_designs.txt"

echo -en "\n  ${G}${BOLD}Select Input Style (1-10): ${NC}"
read -r PROMPT_NUM
if ! [[ "$PROMPT_NUM" =~ ^([1-9]|10)$ ]]; then PROMPT_NUM=3; fi

SELECTED_PROMPT=$(grep "^$PROMPT_NUM|" "$HOME/.prompt_designs.txt")
PROMPT_LINE1_TEMPLATE=$(echo "$SELECTED_PROMPT" | cut -d'|' -f2)
PROMPT_LINE2_TEMPLATE=$(echo "$SELECTED_PROMPT" | cut -d'|' -f3)

# ── Live Animated Matrix Banner ───────────
cat > "$HOME/.terminal_banner.sh" << 'BEOF'
#!/data/data/com.termux/files/usr/bin/bash

NC='\033[0m'; BOLD='\033[1m'; DIM='\033[2m'
TW=$(tput cols 2>/dev/null || echo 60)

GREENS=("46" "47" "48" "82" "83" "118" "154" "190")
G1="\033[38;5;${GREENS[$((RANDOM % ${#GREENS[@]}))]}m"
G2="\033[38;5;28m" 
W="\033[1;37m"

UNAME=$(cat "$HOME/.terminal_username" 2>/dev/null || echo "ARIYAN")
FONT_FILE="$HOME/.ascii_font.txt"

_matrix_animation() {
    local chars="ｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜﾝ1234567890$%"
    clear
    for ((r=0; r<6; r++)); do
        local line=""
        for ((c=0; c<(TW/2); c++)); do
            local char="${chars:$((RANDOM % ${#chars})):1}"
            if (( RANDOM % 5 == 0 )); then
                line+="\033[38;5;46m${char} \033[0m"
            else
                line+="\033[38;5;28m${char} \033[0m"
            fi
        done
        echo -e "  ${line}"
        sleep 0.04
    done
}

_ascii_art() {
    local text="$1" font_file="$2"
    declare -A CHAR_MAP
    local current_char="" lines=() reading=false
    while IFS= read -r line; do
        if [[ "$line" =~ ^[A-Z]$ ]] && [ ${#line} -eq 1 ]; then
            [ -n "$current_char" ] && CHAR_MAP["$current_char"]=$(printf '%s\n' "${lines[@]}")
            current_char="$line"; lines=(); reading=true
        elif [[ "$line" == "SPACE" ]]; then
            [ -n "$current_char" ] && CHAR_MAP["$current_char"]=$(printf '%s\n' "${lines[@]}")
            current_char=" "; lines=(); reading=true
        elif [ "$reading" = true ] && [ -z "$line" ] && [ -n "$current_char" ]; then
            CHAR_MAP["$current_char"]=$(printf '%s\n' "${lines[@]}")
            current_char=""; lines=(); reading=false
        elif [ "$reading" = true ] && [ -n "$line" ]; then
            lines+=("$line")
        fi
    done < "$font_file"
    [ -n "$current_char" ] && CHAR_MAP["$current_char"]=$(printf '%s\n' "${lines[@]}")
    
    local result_lines=()
    for ((i=0; i<6; i++)); do
        local combined_line=""
        for ((j=0; j<${#text}; j++)); do
            local char="${text:$j:1}"
            if [ -n "${CHAR_MAP[$char]}" ]; then
                local char_lines=()
                IFS=$'\n' read -rd '' -a char_lines <<< "${CHAR_MAP[$char]}"
                [ $i -lt ${#char_lines[@]} ] && combined_line+="${char_lines[$i]} "
            else
                combined_line+="      "
            fi
        done
        result_lines+=("$combined_line")
    done
    for line in "${result_lines[@]}"; do echo "$line"; done
}

_matrix_animation

echo -e "${G1} ═════════════════════════════════════════════════════${NC}"

if [ -f "$FONT_FILE" ]; then
    ascii_output=$(_ascii_art "$UNAME" "$FONT_FILE")
    while IFS= read -r line; do
        if [ -n "$line" ]; then
            pad=$(( (TW - ${#line}) / 2 ))
            [ $pad -lt 0 ] && pad=0
            printf "%${pad}s" ""
            echo -e "${G1}${BOLD}${line}${NC}"
        fi
    done <<< "$ascii_output"
fi

SUB="* MULTICOLOR CYBERPUNK TERMINAL *"
pad=$(( (TW - ${#SUB}) / 2 ))
printf "%${pad}s" ""
echo -e "${G1}${BOLD}${SUB}${NC}"
echo -e "${G1} ═════════════════════════════════════════════════════${NC}\n"

DATE_V=$(date +"%d %B %Y  ·  %A")
TIME_V=$(date +"%I:%M:%S %p")
STOR_V=$(df -h "$HOME" 2>/dev/null | awk 'NR==2{print $4" free / "$2}' || echo "N/A")
RAM_V=$(free -m 2>/dev/null | awk 'NR==2{printf "%d/%d MB Used", $3, $2}' || echo "N/A")

# সুন্দরভাবে লাইভ ব্যাটারি তাপমাত্রা রিড করার কোড
TEMP_V=$(termux-battery-status 2>/dev/null | grep -i "temperature" | awk -F: '{print $2}' | tr -d ' ,' | awk '{printf "%.1f°C\n", $1/10}')
if [ -z "$TEMP_V" ] || [ "$TEMP_V" = "0.0°C" ]; then TEMP_V="31.5°C"; fi # ফলব্যাক ডিফল্ট ভ্যালু

IP_V=$(ip route get 1.1.1.1 2>/dev/null | grep -oP 'src \K\S+')
[ -z "$IP_V" ] && IP_V="Offline" || IP_V="Online"

BW=$((TW - 4))
[ $BW -gt 60 ] && BW=60
VAL_W=$((BW - 16))

echo -e "  ${G2}╭$(printf '─%.0s' $(seq 1 $BW))╮${NC}"
printf "  ${G2}│${NC}  ${G1}📅${NC} DATE     │ %-${VAL_W}s ${G2}│\n" "${DATE_V}"
printf "  ${G2}│${NC}  ${G1}⏰${NC} TIME     │ %-${VAL_W}s ${G2}│\n" "${TIME_V}"
printf "  ${G2}│${NC}  ${G1}🌡️${NC} TEMP     │ %-${VAL_W}s ${G2}│\n" "${TEMP_V}"
echo -e "  ${G2}├$(printf '─%.0s' $(seq 1 $BW))┤${NC}"
printf "  ${G2}│${NC}  ${G1}🌐${NC} NETWORK  │ %-${VAL_W}s ${G2}│\n" "${IP_V}"
printf "  ${G2}│${NC}  ${G1}💾${NC} STORAGE  │ %-${VAL_W}s ${G2}│\n" "${STOR_V}"
printf "  ${G2}│${NC}  ${G1}🧠${NC} MEMORY   │ %-${VAL_W}s ${G2}│\n" "${RAM_V}"
echo -e "  ${G2}╰$(printf '─%.0s' $(seq 1 $BW))╯${NC}"

echo -e "\n\t${G2}${DIM}* chmod 777 ambitions. *${NC}\n"
BEOF

chmod +x "$HOME/.terminal_banner.sh"

# ── .zshrc Config Generation ────────────────
PROMPT_LINE1_FINAL=$(echo "$PROMPT_LINE1_TEMPLATE" | sed 's/_USER_/%F{46}%B${_TERM_USER}%b%f/g' | sed 's/_TIME_/%F{118}%D{%H:%M}%f/g')
PROMPT_LINE2_FINAL=$(echo "$PROMPT_LINE2_TEMPLATE")

cat > "$HOME/.zshrc" << ZEOF
export ZSH="\$HOME/.oh-my-zsh"
export TERM="xterm-256color"
export COLORTERM="truecolor"
ZSH_THEME=""

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)
[ -f "\$ZSH/oh-my-zsh.sh" ] && source "\$ZSH/oh-my-zsh.sh"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=237,bold'
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=46,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=48,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=118,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=82,bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=154,underline'
ZSH_HIGHLIGHT_STYLES[comment]='fg=240,italic'

_TERM_USER=\$(cat "\$HOME/.terminal_username" 2>/dev/null || echo "ARIYAN")
setopt PROMPT_SUBST

typeset -A _BOLDMAP
_BOLDMAP=(A 𝐀 B 𝐁 C 𝐂 D 𝐃 E 𝐄 F 𝐅 G 𝐆 H 𝐇 I 𝐈 J 𝐉 K 𝐊 L 𝐋 M 𝐌 N 𝐍 O 𝐎 P 𝐏 Q 𝐐 R 𝐑 S 𝐒 T 𝐓 U 𝐔 V 𝐕 W 𝐖 X 𝐗 Y 𝐘 Z 𝐙 0 𝟎 1 𝟏 2 𝟐 3 𝟑 4 𝟒 5 𝟓 6 𝟔 7 𝟕 8 𝟖 9 𝟗)

_to_bold_caps() {
    local input="\${(U)1}" out="" ch
    for (( i=1; i<=\${#input}; i++ )); do
        ch="\${input[\$i]}"
        [[ -n "\${_BOLDMAP[\$ch]}" ]] && out+="\${_BOLDMAP[\$ch]}" || out+="\$ch"
    done
    echo "\$out"
}

_folder_icon_box() {
    local cur="\$PWD" home="\$HOME" disp icon w inw border pad content
    w=\${COLUMNS:-\$(tput cols 2>/dev/null || echo 60)}
    (( w > 60 )) && w=60
    (( w < 20 )) && w=20
    inw=\$(( w - 2 ))
    [ "\$cur" = "\$home" ] && { disp="~"; icon="⌂"; } || { disp="\${cur/#\$home/~}"; icon="❐"; }
    
    border=\$(printf '─%.0s' \$(seq 1 \$inw))
    content="  \033[38;5;46m\033[1m\${icon}\033[0m  \033[38;5;252m-- \${disp}\033[0m"
    pad=\$(( inw - \${#disp} - 7 ))
    (( pad < 1 )) && pad=1

    echo -e "\033[38;5;28m╭\${border}╮\033[0m"
    printf "\033[38;5;28m│\033[0m%b" "\${content}"
    printf '%*s' "\${pad}" ""
    echo -e "\033[38;5;46m\033[1m✔\033[0m \033[38;5;28m│\033[0m"
    echo -e "\033[38;5;28m╰\${border}╯\033[0m"

    local bold_txt="\$(_to_bold_caps "cd \${disp}")"
    echo -e "\033[38;5;46m\033[1m⏤꯭֯\${_TERM_USER}⃪꯭̽ᷝ✮͢𓆩\${bold_txt}𓆪-:)👽💚\033[0m"
}
autoload -Uz add-zsh-hook
add-zsh-hook chpwd _folder_icon_box

PROMPT='${PROMPT_LINE1_FINAL}
%F{28}%B${PROMPT_LINE2_FINAL} %b%f'

alias cls='clear && bash ~/.terminal_banner.sh'
alias banner='bash ~/.terminal_banner.sh'
alias reload='source ~/.zshrc'
alias ..='cd ..'

[ -f "\$HOME/.terminal_banner.sh" ] && bash "\$HOME/.terminal_banner.sh"
_folder_icon_box

if [ "\$SHELL" != "/data/data/com.termux/files/usr/bin/zsh" ]; then
    chsh -s zsh
fi
ZEOF

echo -e "\n  ${G}[✔] COMPLETE PRE-CONFIG DONE! PLEASE RESTART TERMUX.${NC}"

