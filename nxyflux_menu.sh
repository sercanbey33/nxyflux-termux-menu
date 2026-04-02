#!/bin/bash

# ============================================================
# NxYFLuX Termux Gelişmiş Hızlı Menü
# Version: 1.0
# Author: NxYFLuX ( SeRCaN BeY )
# Description: Kod yazmadan Termux paket ve araç yönetimi
# ============================================================

# Renk Tanımlamaları
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Dil Değişkenleri
declare -A LANG

# Dil Seçimi Fonksiyonu
select_language() {
    clear
    echo -e "${CYAN}"
    figlet -f small "NxYFLuX" 2>/dev/null || echo "NxYFLuX"
    echo -e "${PURPLE}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║           🌐 SELECT LANGUAGE / DİL SEÇİMİ                  ║${NC}"
    echo -e "${PURPLE}╠════════════════════════════════════════════════════════════╣${NC}"
    echo -e "${WHITE}║  [1] 🇹🇷 Türkçe                                             ║${NC}"
    echo -e "${WHITE}║  [2] 🇬🇧 English                                            ║${NC}"
    echo -e "${WHITE}║  [3] 🇷🇺 Русский                                            ║${NC}"
    echo -e "${WHITE}║  [4] 🇯🇵 日本語                                               ║${NC}"
    echo -e "${WHITE}║  [5] 🇰🇷 한국어                                               ║${NC}"
    echo -e "${WHITE}║  [6] 🇩🇪 Deutsch                                            ║${NC}"
    echo -e "${PURPLE}╚════════════════════════════════════════════════════════════╝${NC}"
    echo -e ""
    echo -ne "${YELLOW}>>> ${NC}"
    read lang_choice
    
    case $lang_choice in
        1) load_language_tr ;;
        2) load_language_en ;;
        3) load_language_ru ;;
        4) load_language_jp ;;
        5) load_language_kr ;;
        6) load_language_de ;;
        *) load_language_tr ;;
    esac
}

# Türkçe Dil Dosyası
load_language_tr() {
    LANG[title]="NxYFLuX Termux Gelişmiş Menü"
    LANG[subtitle]="Kod Yazmadan Hızlı Yönetim"
    LANG[menu_title]="📋 ANA MENÜ"
    LANG[opt_update]="Sistem Güncelleme"
    LANG[opt_install]="Paket/Araç Kurulumu"
    LANG[opt_remove]="Paket Kaldırma"
    LANG[opt_list]="Kurulu Paketleri Listele"
    LANG[opt_search]="Paket Ara"
    LANG[opt_clean]="Önbellek Temizleme"
    LANG[opt_storage]="Depolama Erişimi Ayarla"
    LANG[opt_tools]="Popüler Araçlar Menüsü"
    LANG[opt_info]="Sistem Bilgisi"
    LANG[opt_exit]="Çıkış"
    LANG[select_option]="Seçiminizi yapın"
    LANG[updating]="Sistem güncelleniyor..."
    LANG[installing]="Kuruluyor..."
    LANG[removing]="Kaldırılıyor..."
    LANG[searching]="Aranıyor..."
    LANG[success]="✅ İşlem başarılı!"
    LANG[error]="❌ Hata oluştu!"
    LANG[enter_package]="Paket adını girin"
    LANG[press_enter]="Devam etmek için Enter'a basın..."
    LANG[return_menu]="Ana menüye dönmek için Enter'a basın..."
    LANG[current_lang]="🇹🇷 Türkçe"
}

# İngilizce Dil Dosyası
load_language_en() {
    LANG[title]="NxYFLuX Termux Advanced Menu"
    LANG[subtitle]="Fast Management Without Coding"
    LANG[menu_title]="📋 MAIN MENU"
    LANG[opt_update]="System Update"
    LANG[opt_install]="Package/Tool Installation"
    LANG[opt_remove]="Remove Package"
    LANG[opt_list]="List Installed Packages"
    LANG[opt_search]="Search Package"
    LANG[opt_clean]="Clear Cache"
    LANG[opt_storage]="Setup Storage Access"
    LANG[opt_tools]="Popular Tools Menu"
    LANG[opt_info]="System Information"
    LANG[opt_exit]="Exit"
    LANG[select_option]="Select option"
    LANG[updating]="Updating system..."
    LANG[installing]="Installing..."
    LANG[removing]="Removing..."
    LANG[searching]="Searching..."
    LANG[success]="✅ Operation successful!"
    LANG[error]="❌ Error occurred!"
    LANG[enter_package]="Enter package name"
    LANG[press_enter]="Press Enter to continue..."
    LANG[return_menu]="Press Enter to return to main menu..."
    LANG[current_lang]="🇬🇧 English"
}

# Rusça Dil Dosyası
load_language_ru() {
    LANG[title]="NxYFLuX Termux Расширенное Меню"
    LANG[subtitle]="Быстрое Управление Без Кода"
    LANG[menu_title]="📋 ГЛАВНОЕ МЕНЮ"
    LANG[opt_update]="Обновление Системы"
    LANG[opt_install]="Установка Пакетов/Инструментов"
    LANG[opt_remove]="Удаление Пакета"
    LANG[opt_list]="Список Установленных Пакетов"
    LANG[opt_search]="Поиск Пакета"
    LANG[opt_clean]="Очистка Кэша"
    LANG[opt_storage]="Настройка Доступа к Хранилищу"
    LANG[opt_tools]="Меню Популярных Инструментов"
    LANG[opt_info]="Информация о Системе"
    LANG[opt_exit]="Выход"
    LANG[select_option]="Выберите опцию"
    LANG[updating]="Обновление системы..."
    LANG[installing]="Установка..."
    LANG[removing]="Удаление..."
    LANG[searching]="Поиск..."
    LANG[success]="✅ Операция успешна!"
    LANG[error]="❌ Произошла ошибка!"
    LANG[enter_package]="Введите имя пакета"
    LANG[press_enter]="Нажмите Enter для продолжения..."
    LANG[return_menu]="Нажмите Enter для возврата в меню..."
    LANG[current_lang]="🇷🇺 Русский"
}

# Japonca Dil Dosyası
load_language_jp() {
    LANG[title]="NxYFLuX Termux 高度メニュー"
    LANG[subtitle]="コーディングなしの高速管理"
    LANG[menu_title]="📋 メインメニュー"
    LANG[opt_update]="システム更新"
    LANG[opt_install]="パッケージ/ツールのインストール"
    LANG[opt_remove]="パッケージの削除"
    LANG[opt_list]="インストール済みパッケージ一覧"
    LANG[opt_search]="パッケージ検索"
    LANG[opt_clean]="キャッシュクリア"
    LANG[opt_storage]="ストレージアクセス設定"
    LANG[opt_tools]="人気ツールメニュー"
    LANG[opt_info]="システム情報"
    LANG[opt_exit]="終了"
    LANG[select_option]="オプションを選択"
    LANG[updating]="システムを更新中..."
    LANG[installing]="インストール中..."
    LANG[removing]="削除中..."
    LANG[searching]="検索中..."
    LANG[success]="✅ 操作成功！"
    LANG[error]="❌ エラーが発生しました！"
    LANG[enter_package]="パッケージ名を入力"
    LANG[press_enter]="続行するにはEnterを押してください..."
    LANG[return_menu]="メニューに戻るにはEnterを押してください..."
    LANG[current_lang]="🇯🇵 日本語"
}

# Korece Dil Dosyası
load_language_kr() {
    LANG[title]="NxYFLuX Termux 고급 메뉴"
    LANG[subtitle]="코딩 없는 빠른 관리"
    LANG[menu_title]="📋 메인 메뉴"
    LANG[opt_update]="시스템 업데이트"
    LANG[opt_install]="패키지/도구 설치"
    LANG[opt_remove]="패키지 제거"
    LANG[opt_list]="설치된 패키지 목록"
    LANG[opt_search]="패키지 검색"
    LANG[opt_clean]="캐시 지우기"
    LANG[opt_storage]="저장소 접근 설정"
    LANG[opt_tools]="인기 도구 메뉴"
    LANG[opt_info]="시스템 정보"
    LANG[opt_exit]="종료"
    LANG[select_option]="옵션 선택"
    LANG[updating]="시스템 업데이트 중..."
    LANG[installing]="설치 중..."
    LANG[removing]="제거 중..."
    LANG[searching]="검색 중..."
    LANG[success]="✅ 작업 성공!"
    LANG[error]="❌ 오류 발생!"
    LANG[enter_package]="패키지 이름 입력"
    LANG[press_enter]="계속하려면 Enter를 누르세요..."
    LANG[return_menu]="메뉴로 돌아가려면 Enter를 누르세요..."
    LANG[current_lang]="🇰🇷 한국어"
}

# Almanca Dil Dosyası
load_language_de() {
    LANG[title]="NxYFLuX Termux Erweitertes Menü"
    LANG[subtitle]="Schnelle Verwaltung Ohne Codierung"
    LANG[menu_title]="📋 HAUPTMENÜ"
    LANG[opt_update]="System Aktualisierung"
    LANG[opt_install]="Paket/Werkzeug Installation"
    LANG[opt_remove]="Paket Entfernen"
    LANG[opt_list]="Installierte Pakete Auflisten"
    LANG[opt_search]="Paket Suchen"
    LANG[opt_clean]="Cache Leeren"
    LANG[opt_storage]="Speicherzugriff Einrichten"
    LANG[opt_tools]="Beliebte Werkzeuge Menü"
    LANG[opt_info]="Systeminformationen"
    LANG[opt_exit]="Beenden"
    LANG[select_option]="Option wählen"
    LANG[updating]="System wird aktualisiert..."
    LANG[installing]="Wird installiert..."
    LANG[removing]="Wird entfernt..."
    LANG[searching]="Wird gesucht..."
    LANG[success]="✅ Vorgang erfolgreich!"
    LANG[error]="❌ Fehler aufgetreten!"
    LANG[enter_package]="Paketnamen eingeben"
    LANG[press_enter]="Zum Fortfahren Enter drücken..."
    LANG[return_menu]="Zurück zum Menü Enter drücken..."
    LANG[current_lang]="🇩🇪 Deutsch"
}

# Banner Gösterimi
show_banner() {
    clear
    echo -e "${CYAN}"
    if command -v figlet &> /dev/null; then
        figlet -f slant "NxYFLuX" 2>/dev/null || echo "NxYFLuX"
    else
        echo -e "███╗   ██╗██╗  ██╗██╗   ██╗███████╗██╗     ██╗   ██╗██╗  ██╗"
        echo -e "████╗  ██║╚██╗██╔╝╚██╗ ██╔╝██╔════╝██║     ██║   ██║╚██╗██╔╝"
        echo -e "██╔██╗ ██║ ╚███╔╝  ╚████╔╝ █████╗  ██║     ██║   ██║ ╚███╔╝ "
        echo -e "██║╚██╗██║ ██╔██╗   ╚██╔╝  ██╔══╝  ██║     ██║   ██║ ██╔██╗ "
        echo -e "██║ ╚████║██╔╝ ██╗   ██║   ██║     ███████╗╚██████╔╝██╔╝ ██╗"
        echo -e "╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚══════╝ ╚═════╝ ╚═╝  ╚═╝"
    fi
    echo -e "${PURPLE}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║${CYAN}        ${LANG[title]}${PURPLE}         ║${NC}"
    echo -e "${PURPLE}║${WHITE}           ${LANG[subtitle]}${PURPLE}           ║${NC}"
    echo -e "${PURPLE}║${YELLOW}              🌐 ${LANG[current_lang]}${PURPLE}                    ║${NC}"
    echo -e "${PURPLE}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
}

# Ana Menü
show_menu() {
    show_banner
    echo -e "${GREEN}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║${WHITE}              ${LANG[menu_title]}${GREEN}                        ║${NC}"
    echo -e "${GREEN}╠════════════════════════════════════════════════════════════╣${NC}"
    echo -e "${GREEN}║${CYAN}  [1] 🔄  ${LANG[opt_update]}${GREEN}                                     ║${NC}"
    echo -e "${GREEN}║${CYAN}  [2] 📦  ${LANG[opt_install]}${GREEN}                              ║${NC}"
    echo -e "${GREEN}║${CYAN}  [3] 🗑️   ${LANG[opt_remove]}${GREEN}                                     ║${NC}"
    echo -e "${GREEN}║${CYAN}  [4] 📋  ${LANG[opt_list]}${GREEN}                       ║${NC}"
    echo -e "${GREEN}║${CYAN}  [5] 🔍  ${LANG[opt_search]}${GREEN}                                     ║${NC}"
    echo -e "${GREEN}║${CYAN}  [6] 🧹  ${LANG[opt_clean]}${GREEN}                                    ║${NC}"
    echo -e "${GREEN}║${CYAN}  [7] 💾  ${LANG[opt_storage]}${GREEN}                         ║${NC}"
    echo -e "${GREEN}║${CYAN}  [8] 🛠️  ${LANG[opt_tools]}${GREEN}                              ║${NC}"
    echo -e "${GREEN}║${CYAN}  [9] ℹ️   ${LANG[opt_info]}${GREEN}                                  ║${NC}"
    echo -e "${GREEN}║${CYAN}  [0] 🚪  ${LANG[opt_exit]}${GREEN}                                         ║${NC}"
    echo -e "${GREEN}║${CYAN}  [L] 🌐  Change Language / Dil Değiştir${GREEN}                   ║${NC}"
    echo -e "${GREEN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -ne "${YELLOW}[${LANG[select_option]}] >>> ${NC}"
}

# Sistem Güncelleme
update_system() {
    show_banner
    echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${WHITE}                  🔄 ${LANG[opt_update]}${CYAN}                      ║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}${LANG[updating]}${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    
    pkg update -y && pkg upgrade -y
    
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${GREEN}${LANG[success]}${NC}"
    echo ""
    read -p "${LANG[return_menu]}"
}

# Paket Kurulumu
install_package() {
    show_banner
    echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${WHITE}                  📦 ${LANG[opt_install]}${CYAN}                   ║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -ne "${YELLOW}${LANG[enter_package]}: ${NC}"
    read package_name
    
    if [ -n "$package_name" ]; then
        echo -e "${YELLOW}${LANG[installing]} $package_name...${NC}"
        echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        pkg install -y $package_name
        echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo -e "${GREEN}${LANG[success]}${NC}"
    else
        echo -e "${RED}${LANG[error]}${NC}"
    fi
    echo ""
    read -p "${LANG[return_menu]}"
}

# Paket Kaldırma
remove_package() {
    show_banner
    echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${WHITE}                  🗑️  ${LANG[opt_remove]}${CYAN}                          ║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -ne "${YELLOW}${LANG[enter_package]}: ${NC}"
    read package_name
    
    if [ -n "$package_name" ]; then
        echo -e "${YELLOW}${LANG[removing]} $package_name...${NC}"
        echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        pkg uninstall -y $package_name
        echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo -e "${GREEN}${LANG[success]}${NC}"
    else
        echo -e "${RED}${LANG[error]}${NC}"
    fi
    echo ""
    read -p "${LANG[return_menu]}"
}

# Paket Listesi
list_packages() {
    show_banner
    echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${WHITE}                  📋 ${LANG[opt_list]}${CYAN}            ║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}📦 Kurulu Paketler:${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    pkg list-installed | head -50
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${GREEN}Toplam: $(pkg list-installed | wc -l) paket${NC}"
    echo ""
    read -p "${LANG[return_menu]}"
}

# Paket Arama
search_package() {
    show_banner
    echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${WHITE}                  🔍 ${LANG[opt_search]}${CYAN}                          ║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -ne "${YELLOW}${LANG[enter_package]}: ${NC}"
    read package_name
    
    if [ -n "$package_name" ]; then
        echo -e "${YELLOW}${LANG[searching]} $package_name...${NC}"
        echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        pkg search $package_name
        echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    else
        echo -e "${RED}${LANG[error]}${NC}"
    fi
    echo ""
    read -p "${LANG[return_menu]}"
}

# Önbellek Temizleme
clean_cache() {
    show_banner
    echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${WHITE}                  🧹 ${LANG[opt_clean]}${CYAN}                         ║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}🧹 Önbellek temizleniyor...${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    pkg clean
    apt autoremove -y
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${GREEN}${LANG[success]}${NC}"
    echo ""
    read -p "${LANG[return_menu]}"
}

# Depolama Erişimi
setup_storage() {
    show_banner
    echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${WHITE}                  💾 ${LANG[opt_storage]}${CYAN}               ║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}💾 Depolama erişimi ayarlanıyor...${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    termux-setup-storage
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${GREEN}${LANG[success]}${NC}"
    echo ""
    read -p "${LANG[return_menu]}"
}

# Popüler Araçlar Menüsü
tools_menu() {
    while true; do
        show_banner
        echo -e "${PURPLE}╔════════════════════════════════════════════════════════════╗${NC}"
        echo -e "${PURPLE}║${WHITE}                  🛠️  POPÜLER ARAÇLAR${PURPLE}                       ║${NC}"
        echo -e "${PURPLE}╠════════════════════════════════════════════════════════════╣${NC}"
        echo -e "${PURPLE}║${CYAN}  [1] 🐍 Python & Pip (Python geliştirme ortamı)${PURPLE}         ║${NC}"
        echo -e "${PURPLE}║${CYAN}  [2] 🌐 Git (Versiyon kontrol sistemi)${PURPLE}                   ║${NC}"
        echo -e "${PURPLE}║${CYAN}  [3] 🎯 Nmap (Ağ tarayıcı)${PURPLE}                             ║${NC}"
        echo -e "${PURPLE}║${CYAN}  [4] 🔐 OpenSSH (Uzaktan erişim)${PURPLE}                       ║${NC}"
        echo -e "${PURPLE}║${CYAN}  [5] 🕸️  Wget & Curl (İndirme araçları)${PURPLE}                    ║${NC}"
        echo -e "${PURPLE}║${CYAN}  [6] 📝 Nano & Vim (Metin editörleri)${PURPLE}                  ║${NC}"
        echo -e "${PURPLE}║${CYAN}  [7] 🎨 Figlet & Lolcat (Metin efektleri)${PURPLE}              ║${NC}"
        echo -e "${PURPLE}║${CYAN}  [8] 🔍 Hydra (Parola kırıcı)${PURPLE}                         ║${NC}"
        echo -e "${PURPLE}║${CYAN}  [9] 📡 Aircrack-ng (WiFi güvenlik)${PURPLE}                   ║${NC}"
        echo -e "${PURPLE}║${CYAN}  [10] 🗄️  Metasploit (Güvenlik test)${PURPLE}                     ║${NC}"
        echo -e "${PURPLE}║${CYAN}  [11] 🧪 Tüm Temel Paketler (Toplu kurulum)${PURPLE}           ║${NC}"
        echo -e "${PURPLE}║${CYAN}  [0] 🔙 Ana Menüye Dön${PURPLE}                                 ║${NC}"
        echo -e "${PURPLE}╚════════════════════════════════════════════════════════════╝${NC}"
        echo ""
        echo -ne "${YELLOW}[Seçim] >>> ${NC}"
        read tool_choice
        
        case $tool_choice in
            1)
                echo -e "${GREEN}🐍 Python kuruluyor...${NC}"
                pkg install -y python python-pip
                pip install --upgrade pip
                echo -e "${GREEN}✅ Python kuruldu!${NC}"
                sleep 2
                ;;
            2)
                echo -e "${GREEN}🌐 Git kuruluyor...${NC}"
                pkg install -y git
                echo -e "${GREEN}✅ Git kuruldu!${NC}"
                sleep 2
                ;;
            3)
                echo -e "${GREEN}🎯 Nmap kuruluyor...${NC}"
                pkg install -y nmap
                echo -e "${GREEN}✅ Nmap kuruldu!${NC}"
                sleep 2
                ;;
            4)
                echo -e "${GREEN}🔐 OpenSSH kuruluyor...${NC}"
                pkg install -y openssh
                echo -e "${GREEN}✅ OpenSSH kuruldu!${NC}"
                sleep 2
                ;;
            5)
                echo -e "${GREEN}🕸️  Wget & Curl kuruluyor...${NC}"
                pkg install -y wget curl
                echo -e "${GREEN}✅ Wget & Curl kuruldu!${NC}"
                sleep 2
                ;;
            6)
                echo -e "${GREEN}📝 Nano & Vim kuruluyor...${NC}"
                pkg install -y nano vim
                echo -e "${GREEN}✅ Nano & Vim kuruldu!${NC}"
                sleep 2
                ;;
            7)
                echo -e "${GREEN}🎨 Figlet & Lolcat kuruluyor...${NC}"
                pkg install -y figlet ruby
                gem install lolcat
                echo -e "${GREEN}✅ Figlet & Lolcat kuruldu!${NC}"
                sleep 2
                ;;
            8)
                echo -e "${GREEN}🔍 Hydra kuruluyor...${NC}"
                pkg install -y hydra
                echo -e "${GREEN}✅ Hydra kuruldu!${NC}"
                sleep 2
                ;;
            9)
                echo -e "${GREEN}📡 Aircrack-ng kuruluyor...${NC}"
                pkg install -y aircrack-ng
                echo -e "${GREEN}✅ Aircrack-ng kuruldu!${NC}"
                sleep2
                ;;
          10)
                echo -e"${GREEN}🗄️ Metasploit kuruluyor...${NC}"
                pkg install -y unstable-repo
                pkg install -y metasploit
                echo -e "${GREEN}✅ Metasploit kuruldu!${NC}"
                sleep2
                ;;
          11)
                echo -e"${GREEN}🧪 Tüm temel paketler  kuruluyor...${NC}"
                pkg install -y git python python-pip wget curl nano vim figlet nmap openssh hydra unzip zip tar clang make cmake
                gem install lolcat
                pip install requests bs4 mechanize
                echo -e "${GREEN}✅ Tüm temel paketler kuruldu!${NC}"
                sleep3
                ;;
            0)
                break
                ;;
            *)
               echo -e "${RED}❌ Geçersiz seçim!${NC}"
               sleep1
               ;;
       esac
  done
}
system_info() {
       show_banner
       echo -e "${CYAN}╔═══════════════════════════════════════════════════════════╗${NC}"
       echo -e "${CYAN}║${WHITE}                                                                ℹ️ SİSTEM BİLGİSİ${CYAN}                                ║${NC}"
       echo -e "${CYAN}╚═══════════════════════════════════════════════════════════╝${NC}"
       echo ""
       echo -e "${YELLOW}📱 Cihaz Bilgisi:${NC}"
       echo -e "${BLUE}─────────────────────────────────────────────────────────${NC}"
       echo -e "${WHITE}🏠 Hostname:${NC} $(hostname)"
       echo -e "${WHITE}🐧 Kernel:${NC} $(uname -r)"
       echo -e "${WHITE}⚙️ Mimari:${NC} $(uname -m)"
       echo -e "${WHITE}📦 İşletim Sistemi: $(uname -o)"
       echo ""
       echo -e "${YELLOW}💾 Bellek Kullanımı:${NC}"
       echo -e "${BLUE}─────────────────────────────────────────────────────────${NC}"
       free -h 2>/dev/null || echo "Bellek bilgisi alınamadı"
       echo ""
       echo -e "${YELLOW}💽 Disk Kullanımı:${NC}"
       echo -e "${BLUE}─────────────────────────────────────────────────────────${NC}"
       df -h $HOME
       echo ""
       echo -e "${YELLOW}🔋 Batarya:${NC}"
       echo -e "${BLUE}─────────────────────────────────────────────────────────${NC}"
       termux-battery-status 2>/dev/null || echo "Termux:API kurulu değil"
       echo ""
       echo -e "${YELLOW}🌐 Ağ:${NC}"
       echo -e "${BLUE}─────────────────────────────────────────────────────────${NC}"
       ifconfig 2>/dev/null | grep -E "inet|wlan|eth" || ip addr 2>/dev/null | grep -E "inet|wlan|eth" || echo "Ağ bilgisi alınamadı"
       echo ""
       read -p "${LANG[return_menu]}"
}

main() {
         if ! command -v figlet &> /dev/null; then
              echo -e "${YELLOW}Gerekli paketler kuruluyor...${NC}"
              pkg update -y &> /dev/null
              pkg install -y figlet ruby &> /dev/null
              gem install lolcat &> /dev/null
         fi
         
         while true; do
                   show_menu
                   read choice
                   
                   case $choice in
                          1) update_system ;;
                          2) install_package ;;
                          3) remove_package ;;
                          4) list_packages ;;
                          5) search_package ;;
                          6) clean_cache ;;
                          7) setup_storage ;;
                          8) tools_menu ;;
                          9) system_info ;;
                          0|q|Q)
                                clear
                                echo -e "${GREEN}"
                                figlet -f small "Görüşürüz! NxYFLuX Official Gururla Sunar." 2>/dev/null echo "Görüşürüz! NxYFLuX Official Gururla Sunar."
                                echo -e "${CYAN}NxYFLuX Termux Menü Kapatıldı.${NC}"
                                exit 0
                                ;;
                          1|L)
                                select_language
                                ;;
                            *)
                                echo -e "${RED}❌ Geçersiz seçim!${NC}"
                                sleep 1
                                ;;
                       esac
               done
}


main
                               
