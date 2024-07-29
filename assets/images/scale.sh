#!/bin/bash

# ImageMagickがインストールされていることを確認してください
if ! command -v convert &> /dev/null
then
    echo "ImageMagick is not installed. Please install it first."
    exit
fi

# フォルダのパス
SOURCE_DIR="cook"
TARGET_DIR="s_cook"

# 目的のフォルダが存在しない場合は作成
mkdir -p "$TARGET_DIR"

# すべての画像ファイルに対して処理を行う
for img in "$SOURCE_DIR"/*.{jpg,jpeg,png,gif}
do
    # ファイルが存在しない場合はスキップ
    [ -e "$img" ] || continue

    # 画像の解像度を1/4に縮小して新しいフォルダに保存
    convert "$img" -resize 25% "$TARGET_DIR/$(basename "$img")"
done

echo "All images have been resized and saved to $TARGET_DIR."