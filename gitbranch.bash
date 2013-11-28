#!/bin/bash

# 正直必要かどうかが凄く微妙だけど、いちいちブランチを作成してチェックアウトで移動するってのが異常にめんどくさいんで
# シェルスクリプトを作成して面倒を減らそうとして作成
# 何も考えてない超適当スクリプトです。

# gitコマンドがどのpathに存在するのかを確認する
GITPATH=`which git`

# ブランチ名を外部から引数として取る
BRANCH_NAME=$1

# ブランチを作成する
`${GITPATH} branch ${BRANCH_NAME}`

# 作成したブランチにチェックアウトする
`${GITPATH} checkout ${BRANCH_NAME}`