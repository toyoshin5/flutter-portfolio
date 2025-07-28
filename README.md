# flutter_portfolio

https://tysn.dev

ポートフォリオサイトを作りたくなったので、作ってみる。

とりあえずmainブランチにプッシュされたらGitHub Actionsでビルドして、gh-pagesブランチからデプロイされるようになっている。

## デバッグ実行

```bash
flutter run -d chrome
```

## 詰まったところ

### GitHub Actionsでビルドが失敗する

```text
Action failed with "The process '/usr/bin/git' failed with exit code 128"
```

こんな感じのエラーが出たときは Settings → Actions → General →　WorkFlowpermissions で `Read and write` に変更すると解決した．

### 画面が真っ白

カスタムドメインを使用しているときは，`flutter build web --web-renderer html #--base-href /${{ steps.version.outputs.repository }}` のように `--base-href` を削除する．
逆にカスタムドメインを使用していないときはFlutter側が/リポジトリ名の部分を考慮できないので， `flutter build web --web-renderer html --base-href /${{ steps.version.outputs.repository }}` のように `--base-href` を追加する．

### Pushのたびにカスタムドメインの設定が消える

github actionsでgh-pagesブランチにデプロイする処理の前に、CNAMEファイルを作成してカスタムドメインを設定すればよい。

```yml
- name: CNAME
run: echo 'tysn.dev' > ./build/web/CNAME
```
