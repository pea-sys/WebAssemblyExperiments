- WASM で pthread を有効にする場合、コンパイル時にオプション指定する

```
-s USE_PTHREADS=1 -s PTHREAD_POOL_SIZE=<使用スレッド数>
```

- pthread を使用する場合、pthread を使用する Web Worker 間でメモリを共有するために SharedArrayBuffer が使われる。Chrome と FireFox で SharedArrayBuffer が使用されるページにアクセスする場合、Web サーバーからのレスポンスに以下のレスポンスヘッダが含まれている必要がある

```html
Cross-Origin-Embedder-Policy:require-policy Cross-Origin-Opener-Policy:same-origin
```
