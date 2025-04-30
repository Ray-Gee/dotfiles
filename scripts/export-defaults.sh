#!/bin/bash

# 設定を保存するディレクトリ
DEFAULTS_DIR="$HOME/works/dotfiles/defaults"

# ディレクトリが存在しない場合は作成
mkdir -p "$DEFAULTS_DIR"

# 現在の設定をエクスポート
defaults read > "$DEFAULTS_DIR/current.plist"
defaults read -g > "$DEFAULTS_DIR/global.plist"

# よく使われるドメインの設定を個別にエクスポート
domains=(
    "com.apple.dock"
    "com.apple.finder"
    "com.apple.screencapture"
    "com.apple.safari"
    "com.apple.Terminal"
    "com.apple.dt.Xcode"
    "com.apple.TextEdit"
    "com.apple.mail"
    "com.apple.Spotlight"
    "com.apple.systempreferences"
)

for domain in "${domains[@]}"; do
    defaults read "$domain" > "$DEFAULTS_DIR/${domain//./_}.plist" 2>/dev/null || true
done

echo "Defaults settings have been exported to $DEFAULTS_DIR" 