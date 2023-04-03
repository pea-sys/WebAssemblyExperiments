- 関数ポインタを使用するためには、コンパイル時に RESERVED_FUNCTION_POINTERS フラグを設定する。  
  この時、関数の配列サイズを指定する必要がある。  
  Emscripten はインスタンス化する際に WASM に必要なシグネチャを持つ関数を通知する。関数は JavaScript の中で配列として管理する。

  ```
  emcc <ファイル名>.cpp -s RESERVED_FUNCTION_POINTERS=<使用している関数ポインタの数> -s "EXPORTED_RUNTIME_METHODS=['ccall','UTF8ToString','addFunction','removeFunction']" -s EXPORTED_FUNCTIONS=['_malloc','_free'] -o <ファイル名>.js
  ```

* JavaScript のコードで WASM に関数を渡す場合、Emscripten のヘルパー関数である addFunction を使用する。addFunction で関数ポインタのコードが完了した後は。Emscripten の JavaSccript 配列から removeFunction でコードを削除する。
