#!/bin/bash

# Warna
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RESET='\033[0m'

# Header
clear
echo -e "${CYAN}=====================================${RESET}"
echo -e "${GREEN}        Welcome to SpamTex!         ${RESET}"
echo -e "${CYAN}=====================================${RESET}"
echo -e "${YELLOW}* Developer:${RESET} Nozz Team"
echo -e "${YELLOW}* Version   :${RESET} 1.0"
echo ""

# Input
read -p "$(echo -e "${CYAN}[?]${RESET} Input Text    : ")" spam_text
read -p "$(echo -e "${CYAN}[?]${RESET} Text Amount   : ")" total
echo ""

# Timer sebelum mulai spam
echo -e "${GREEN}[!] Spamming will start in...${RESET}"
for i in 3 2 1; do
  echo -ne "${YELLOW}$i...${RESET}  \r"
  sleep 1
done
echo -e "     "

# Mulai spam
echo -e "${GREEN}[!] Spamming started!${RESET}"
i=1
while [ "$i" -le "$total" ]; do
  echo -n "$spam_text "
  i=$((i+1))
done
echo -e "\n${GREEN}[✓] Done.${RESET}"
