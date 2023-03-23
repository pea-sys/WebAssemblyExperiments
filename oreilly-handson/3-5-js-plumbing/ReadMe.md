# JavaScript の利用

以下のコマンドで JavaScript のコード生成が可能。  
生成される js ファイルは 出力ファイルとして html 指定時に作成されるものと全く同じです。

```
emcc <wasm変換対象ファイル名> -o <出力ファイル名>.js
```

この場合、
WASM に対応している Web サーバから 生成された js をロードする html にアクセスすることで WASM の動作が確認できます

```
python -m http.server
```

ブラウザから http://localhost/<任意の名称>.html にアクセス。
