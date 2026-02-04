# 【仕様】
# スクリプトを実行すると「名前を入力してください:」と聞かれる。
# 名前を入力する（例：Yui）。
# その人の「職業（3番目のデータ）」だけを抜き出して表示する。
# 例：Yui と入力 → 画面に Designer と表示。

#!/bin/bash
MEMBERS_FILE="members.txt"

echo "名前を入力してください:"
read name
occupation=$(grep "^$name," "$MEMBERS_FILE" | cut -d ',' -f3 )

if [ -n "$occupation" ]; then
    echo "$occupation"
else
    echo "名前が見つかりません。"
fi
