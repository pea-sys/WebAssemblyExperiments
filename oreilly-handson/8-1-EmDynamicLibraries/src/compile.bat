cd %~dp0
emcc --clear-cache
emcc validate_order.cpp -s SIDE_MODULE=2 -O1 -o validate_order.wasm
emcc validate_product.cpp -s SIDE_MODULE=2 -O1 -o validate_product.wasm
emcc validate_core.cpp --js-library mergeinto.js -s MAIN_MODULE=2 -s MODULARIZE=1 -s "EXPORTED_FUNCTIONS=['_strlen','_atoi','_malloc']" -s "EXPORTED_RUNTIME_METHODS=['ccall','stringToUTF8','UTF8ToString']" -o validate_core.js