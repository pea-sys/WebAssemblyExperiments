Node.js で WASM をロードする場合、FileSystem モジュールを使用する

```js
const fs = require('fs');
fs.readFile('side_module.wasm', function(error, bytes) {
  if (error) { throw error; }

  instantiateWebAssembly(bytes);
});
function instantiateWebAssembly(bytes) {
  const importObject = {
    env: {
      __memory_base: 0,
    },
  };
```
