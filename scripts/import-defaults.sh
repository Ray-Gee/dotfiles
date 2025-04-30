#!/bin/bash

# 設定が保存されているディレクトリ
DEFAULTS_DIR="$HOME/works/dotfiles/defaults"

# グローバル設定のインポート
if [ -f "$DEFAULTS_DIR/global.plist" ]; then
    while IFS= read -r line; do
        if [[ $line =~ ^([^=]+)=(.*)$ ]]; then
            key="${BASH_REMATCH[1]}"
            value="${BASH_REMATCH[2]}"
            defaults write -g "$key" "$value"
        fi
    done < "$DEFAULTS_DIR/global.plist"
fi

# 個別ドメインの設定をインポート
for plist in "$DEFAULTS_DIR"/*.plist; do
    if [[ $plist != *"global.plist" && $plist != *"current.plist" ]]; then
        domain=$(basename "$plist" .plist | tr '_' '.')
        defaults import "$domain" "$plist"
    fi
done

# 設定の反映
killall Dock
killall Finder
killall SystemUIServer

echo "Defaults settings have been imported from $DEFAULTS_DIR" 