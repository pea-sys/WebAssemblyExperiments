# サイドモジュールとしてコンパイル

サイドモジュールは、ライブラリのようなもので他のモジュールと連結して使用するモジュールです。
この場合、Emscripten で生成するのは wasm ファイルのみになります。  
wasm 生成時に固有のパラメータ指定が必要です。

- --no-entry・・・main 関数がない場合は必要
- -s EXPORTED*FUNCTIONS=['*関数名']

```
emcc <wasm変換対象ファイル名> -O1 --no-entry -s "EXPOTED_FUNCTIONS=['_関数名']" -o <出力ファイル名>.wasm
```

```
C:\Users\user\source\repos\WebAssemblyExperiments\oreilly-handson\3-6-side-module>emcc side_module.c -O1 --no-entry -s "EXPORTED_FUNCTIONS=['_Increment']" -o side_module.wasm
cache:INFO: generating system asset: symbol_lists/e5e3c508e49e42041036eb3e352da0b394f511df.txt... (this will be cached in "C:\Users\user\source\repos\emsdk\upstream\emscripten\cache\symbol_lists\e5e3c508e49e42041036eb3e352da0b394f511df.txt" for subsequent builds)
cache:INFO:  - ok
```

wasm ファイルのみを生成する場合、自前で html と javascript を用意する。  
WASM は WebAssembly javascript API から操作できる。  
WASM をインスタンス化する場合、ダウンロードとコンパイルを並列して行える instantiateStreamin 関数が最も効率が良い。
