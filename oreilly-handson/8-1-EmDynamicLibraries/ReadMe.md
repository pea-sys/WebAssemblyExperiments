- wasm の動的リンクを使用する場合、メインモジュールはサイドモジュールが何を必要としているか判断できないため、
  大規模なアプリケーションではデッドコード除去オプションは無効にした方が良い。MAIN_MODULE に 1 をセットするとデッドコード除去が無効になる。
  ```
  -s MAIN_MODULE=1
  ```
  小規模なアプリケーションであれば、デッドコード除去を有効化は比較的容易なので、使用しても問題ない。MAIN_MODULE に 2 をセットするとデッドコード除去が有効になる。
  ```
  -s MAIN_MODULE=2
  ```

* 以下の Issue にある通り、メインジュールを生成する際の関数のエクスポートがうまくいきません。  
  https://github.com/emscripten-core/emscripten/issues/18900

  現在最新の Emscripten のバージョンは 3.1.33 です。

```
emcc --version
emcc (Emscripten gcc/clang-like replacement + linker emulating GNU ld) 3.1.33 (c1927f22708aa9a26a5956bab61de083e8d3e463)
Copyright (C) 2014 the Emscripten authors (see AUTHORS.txt)
This is free and open source software under the MIT license.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

エクスポートの方法が数週間前に変わったようです。ドキュメントを見ても、記載が見つからなかったので、emscripten を 3.1.31 に下げてみましたが変わらず。

ここでは備忘録としてエラーを残しておき、先のセクションに進んだのちに直そうと思います。

```
validate_core.js:930 Uncaught RuntimeError: Aborted(Assertion failed: Cannot call unknown function ValidateProduct, make sure it is exported)
    at abort (validate_core.js:924:11)
    at assert (validate_core.js:399:5)
    at getCFunc (validate_core.js:4576:7)
    at Object.ccall (validate_core.js:4620:18)
    at validateProduct (index.js:167:31)
    at onClickAddToCart (index.js:156:7)
    at HTMLButtonElement.onclick (（インデックス）:57:84)
```

- emscripten のバージョンを変更する際には、キャッシュをクリアしないと、うまく動かない場合がある

```
emcc --clear-cache
```
