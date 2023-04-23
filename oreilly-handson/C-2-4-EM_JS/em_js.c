#include <stdlib.h>
#include <stdio.h>
#include <emscripten.h>

EM_JS(char*, StringReturnValueWithNoParameters, (), {
  const greetings = "Hello from StringReturnValueWithNoParameters";

  const byteCount = (Module.lengthBytesUTF8(greetings) + 1); //nullèIí[ï∂éöï™í«â¡
 
  const greetingsPointer = Module._malloc(byteCount);
  Module.stringToUTF8(greetings, greetingsPointer, byteCount);

  return greetingsPointer;
});

int main() 
{
  char* greetingsPointer = StringReturnValueWithNoParameters();

  printf("StringReturnValueWithNoParameters was called and it returned the following result: %s\n", greetingsPointer);

  free(greetingsPointer);

  return 0;
}
