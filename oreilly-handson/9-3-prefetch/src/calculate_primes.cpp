#include <cstdlib>
#include <cstdio>
#include <vector>
#include <chrono>
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


void FindPrimes(int start, int end, std::vector<int>& primes_found)
{
  printf("Prime numbers between %d and %d:\n", start, end);

  for (int i = start; i <= end; i += 2)
  {
    if (IsPrime(i))
    {
       primes_found.push_back(i);
    }
  }
}


int main() 
{
  int start = 3, end = 1000000;
  printf("Prime numbers between %d and %d:\n", start, end);

  std::chrono::high_resolution_clock::time_point duration_start = std::chrono::high_resolution_clock::now();
  std::vector<int> primes_found;
  FindPrimes(start, end, primes_found);

  std::chrono::high_resolution_clock::time_point duration_end = std::chrono::high_resolution_clock::now();
  std::chrono::duration<double, std::milli> duration = (duration_end - duration_start);

  printf("FindPrimes took %f milliseconds to execute\n", duration.count());

  printf("The values found:\n");
  for(int n : primes_found) 
  {
    printf("%d ", n);
  }
  printf("\n");

  return 0; 
}
#ifdef __cplusplus
}
#endif