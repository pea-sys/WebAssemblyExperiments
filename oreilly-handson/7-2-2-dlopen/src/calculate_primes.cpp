#include <cstdlib>
#include <cstdio>
#include <emscripten.h>

#ifdef __cplusplus
extern "C" { // C++�Ƃ��ăr���h����ꍇ�ɃG�N�X�|�[�g�֐��̖��O���ύX����Ă��܂��̂�h��
#endif

int IsPrime(int value) 
{
  // 2���w�肳�ꂽ�ꍇ�͑f���Ƃ��Ĕ��ʁi2�͑f���ŗB��̋����j
  if (value == 2) { return 1; }

  // 1��菬�����܂���2�Ŋ���؂�鐔���͑f���ł͂Ȃ�
  if (value <= 1 || value % 2 == 0) { return 0; }

  // �f����1�����̐����g�ł�������؂�Ȃ����ł��邽��1��2�͔�΂�
  // �w�肳�ꂽ���̕������܂ł̊�Ŋ���؂�邩���m�F����
  for (int i = 3; (i * i) <= value; i += 2) 
  {
    // �w�肳�ꂽ��������؂ꂽ�ꍇ�͑f���ł͂Ȃ�
    if (value % i == 0) { return 0; }
  }

  // �ǂ̐��ł�����؂�Ȃ������ꍇ�͑f���ł���
  return 1; 
}

// ���I�����N�ɂ��Ăяo���\�ƂȂ�֐�
EMSCRIPTEN_KEEPALIVE
void FindPrimes(int start, int end)
{
  printf("Prime numbers between %d and %d:\n", start, end);

  for (int i = start; i <= end; i += 2)
  {
    if (IsPrime(i))
    {
      printf("%d ", i);
    }
  }
  printf("\n");
}


int main() 
{
  FindPrimes(3, 100000);

  return 0; 
}
#ifdef __cplusplus
}
#endif