#include <emscripten.h>

// �߂�l�ƃp�����[�^�������Ȃ�
EM_JS(void, NoReturnValueWithNoParameters, (), {
  console.log("NoReturnValueWithNoParameters called");
});

int main()
{
  NoReturnValueWithNoParameters();
  return 0;
}