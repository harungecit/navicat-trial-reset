#!/bin/bash

LANGUAGE="en"

if [[ "$1" == "--lang" && "$2" == "tr" ]]; then
    LANGUAGE="tr"
fi

if [[ "$LANGUAGE" == "tr" ]]; then
    MSG_START="Navicat Premium Deneme Sıfırlama Scripti Başlatıldı!"
    MSG_LINUX="Linux ortamı algılandı. İşlem başlatılıyor..."
    MSG_WINDOWS="Windows ortamı algılandı. İşlem başlatılıyor..."
    MSG_UNSUPPORTED="Desteklenmeyen bir işletim sistemi algılandı. Çıkış yapılıyor..."
    MSG_COMPLETE="Navicat deneme sıfırlama işlemi başarıyla tamamlandı!"
elif [[ "$LANGUAGE" == "en" ]]; then
    MSG_START="Navicat Premium Trial Reset Script Started!"
    MSG_LINUX="Linux environment detected. Starting process..."
    MSG_WINDOWS="Windows environment detected. Starting process..."
    MSG_UNSUPPORTED="Unsupported operating system detected. Exiting..."
    MSG_COMPLETE="Navicat trial reset process completed successfully!"
fi

reset_linux() {
    echo "$MSG_LINUX"
    rm -rf ~/.config/navicat/ ~/.navicat64/Data ~/.config/dconf/user ~/.cache/navicat ~/.navicat/Data ~/.local/share/navicat
    dconf reset -f /com/premiumsoft/navicat/
    find ~/. -type f -name "*.trial" -exec rm -f {} \;
}

reset_windows() {
    echo "$MSG_WINDOWS"
    reg delete "HKCU\Software\PremiumSoft\NavicatPremium" /f >nul 2>&1
    rm -rf "$USERPROFILE\AppData\Local\Temp\Navicat*" "$USERPROFILE\AppData\Roaming\PremiumSoft"
}

main() {
    echo "$MSG_START"

    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        reset_linux
    elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        reset_windows
    else
        echo "$MSG_UNSUPPORTED"
        exit 1
    fi

    echo "$MSG_COMPLETE"
}

main
