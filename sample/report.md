---
title: すごいレポート
author: すごい著者
date: 20xx 年 yy 月 zz 日

bibliography: reference.bib
csl: ieee.csl

reference-section-title: 参考文献
figureTitle: "図 "
figPrefix: "図 "
eqnPrefix: "式."
tableTitle: "表 "
tblPrefix: "表 "
listingTitle: "ソースコード "
lstPrefix: "ソースコード "
secPrefix: "節"
---


# 概要 {-}

よく使いそうな機能を試したサンプル．

`-N` オプションで自動的に節番号を振ってくれる．
`{-}`を後ろにつけると節番号は振られない．

# 見出し
## 文章

日本国民は、正当に選挙された国会における代表者を通じて行動し、
われらとわれらの子孫のために、諸国民との協和による成果と、
わが国全土にわたつて自由のもたらす恵沢を確保し、
政府の行為によつて再び戦争の惨禍が起ることのないやうにすることを決意し、
ここに主権が国民に存することを宣言し、この憲法を確定する。
そもそも国政は、国民の厳粛な信託によるものであつて、その権威は国民に由来し、
その権力は国民の代表者がこれを行使し、その福利は国民がこれを享受する。
これは人類普遍の原理であり、この憲法は、かかる原理に基くものである。
われらは、これに反する一切の憲法、法令及び詔勅を排除する。

日本国民は、恒久の平和を念願し、人間相互の関係を支配する崇高な理想を
深く自覚するのであつて、平和を愛する諸国民の公正と信義に信頼して、
われらの安全と生存を保持しようと決意した。
われらは、平和を維持し、専制と隷従、圧迫と偏狭を地上から
永遠に除去しようと努めてゐる国際社会において、名誉ある地位を占めたいと思ふ。
われらは、全世界の国民が、ひとしく恐怖と欠乏から免かれ、
平和のうちに生存する権利を有することを確認する。


## 箇条書き

itemize

- 箇条書き
- 箇条書き
    - 箇条書き
        - 箇条書き
    - 箇条書き

## 箇条書き 

enumerate

1. 箇条書き
1. 箇条書き
1. 箇条書き
1. 箇条書き

## 図の挿入

[@fig:graph_up]のようにmarkdownの記法で図を挿入できる．
pandoc-crossrefというフィルターを使うとキャプションも簡単につけられる．
[@sec:reference]でも触れるが，参照もできる．

![すごい図](figs/graph_up.png){#fig:graph_up width=60%}

[@fig:label]のようにHTMLタグを使えばsubfigureのようなことが一応できる．

<div id="fig:label">

![サブキャプション1](figs/graph_up.png){#fig:sublabel1 width=40%}
![サブキャプション2](figs/graph_down.png){#fig:sublabel2 width=40%}

<br>

![サブキャプション3](figs/graph_up.png){#fig:sublabel3 width=40%}
![サブキャプション4](figs/graph_down.png){#fig:sublabel4 width=40%}

キャプション
</div>

## 数式
### インライン

ここで$a=b$とすると$a=b$である．

### 長めのやつ

$$ \frac{\pi^{2}}{6}=\sum_{n=1}^{\infty} \frac{1}{n^{2}} $$

$$
\frac{1}{\pi} \int_{-\pi}^{\pi}|f(t)|^{2} d t=\frac{a_{0}^{2}}{2}+\sum_{n=1}^{\infty}\left(a_{n}^{2}+b_{n}^{2}\right)=2 \sum_{n=-\infty}^{\infty}\left|c_{n}\right|^{2}
$$ {#eq:parseval}

## 脚注

フッターで注釈をつけることが可能． [^1]
ラベルは自由につけられる．[^nice-label]

ちなみにlatexの記法は基本そのまま使える．
ここで改ページ

[^1]: 脚注です
[^nice-label]: 脚注です

\clearpage

## コード

```{#lst:hello .c .numberLines caption="すごいコード．"}
#include <stdio.h>

int main() {
    // comment
    printf("hello world\n");
    return 0;
}
```



# pandoc-crossrefで相互参照 {#sec:reference}

[@fig:graph_up] はすごいことを示している．
[@fig:sublabel1;@fig:sublabel2]からはすごいことがわかる．

[@lst:hello] はすごい．

[@eq:parseval] はすごい．

フォーマットやオプションはマニュアル [^crossref] を参照．


[^crossref]: http://lierdakil.github.io/pandoc-crossref/


## 引用

bibtexを使うのが良い．

pandoc-citeproc [^citeproc] を使うと
bibtexが利用できる．

本やら論文ならgoogle scholar [^google] などでbib形式のテキストが手に入る．
mendeleyなどで管理している場合は自動で吐いてくれるから楽．
自分で書くのはできるだけ避けたい．


### sample

[@paper1]ですごいことが示された．

[@paper2]の提案はすごい．

[@hennessy2011computer] はすごい本．

引用のスタイルファイルはzotero style repository [^zotero] から入手した．

[^citeproc]: https://github.com/jgm/pandoc-citeproc
[^zotero]: https://www.zotero.org/styles
[^google]: https://scholar.google.com/

### online

Pandoc ユーザーズガイド[@pandocguide]を引用する

