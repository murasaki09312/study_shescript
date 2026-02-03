# 【仕様】
# 実行すると「じゃんけんしましょう！(g/c/p/exit):」と聞かれる。
# g と入力されたら「グー！」と表示。
# c と入力されたら「チョキ！」と表示。
# p と入力されたら「パー！」と表示。
# exit と入力されたら「ばいばい！」と表示して終了（ループを抜ける）。
# それ以外なら「gかcかpで答えてね」と表示して、また最初に戻る。

while true; do
    echo "じゃんけんしましょう！(g/c/p/exit):"
    read input
    if [ "$input" = "g" ]; then
        echo "グー！"
    elif [ "$input" = "c" ]; then
        echo "チョキ！"
    elif [ "$input" = "p" ]; then
        echo "パー！"
    elif [ "$input" = "exit" ]; then
        echo "ばいばい！"
        break
    else
        echo "gかcかpで答えてね"
    fi
done