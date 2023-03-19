# HTML テンプレートの利用

以下のコマンドで HTML テンプレートが出力可能  
デバッグやプロトタイプ作成時に使用すると便利とのこと。

```
emcc <wasm変換対象ファイル名> -o <出力ファイル名>.html
```

WASM に対応している Web サーバから html にアクセスすることで WASM の動作が確認できます

```
python -m http.server
```

ブラウザから http://localhost/html_template.html にアクセス。

![localhost_8000_html_template html](https://user-images.githubusercontent.com/49807271/224533235-5832db07-7a5d-4f47-9621-03ba084718f2.png)
