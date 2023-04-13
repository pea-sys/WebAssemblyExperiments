#include <cstdlib>
#include <cstdio>
#include <vector>
#include <chrono>
#include <pthread.h>
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
  // ���������͂��ꂽ�ꍇ�̓C���N�������g���Ċ�ɂ���
  if (start % 2 == 0) { start++; }

  // �������f���łȂ����Ƃ͖��炩�ł��邽�ߊ�݂̂𔻕ʂ���
  for (int i = start; i <= end; i += 2)
  {
    // �f���ł���ꍇ�̓u���E�U�̃R���\�[���ɏo�͂���
    if (IsPrime(i))
    {
      primes_found.push_back(i);
    }
  }
}

struct thread_args 
{
  int start;
  int end;
  std::vector<int> primes_found;
};

void* thread_func(void* arg) 
{
   struct thread_args* args = (struct thread_args*)arg;

   FindPrimes(args->start, args->end, args->primes_found);

   return arg;
}

int main() 
{
  int start = 3, end = 1000000;
  printf("Prime numbers between %d and %d:\n", start, end);

  // �uclock_t start = clock()�v�͊e�X���b�h���g�p����CPU���Ԃ��܂�CPU�N���b�N��Ԃ����ߎg�p���Ȃ�
  // ��X���m�肽���̂̓R�[�h�ł̏����ɂ����������Ԃł���
  std::chrono::high_resolution_clock::time_point duration_start = std::chrono::high_resolution_clock::now();


  // �X���b�h���������₷�����邽�߂ɃX���b�h��ID��ۑ����邽�߂̔z����쐬����
  // �e�X���b�h�ɓn�������̔z����쐬����
  // �i���C���X���b�h�ł��v�Z���������邽�߃X���b�h���ł���4����1�傫���l���w�肷��j
  pthread_t thread_ids[4];
  struct thread_args args[5];

  int args_index = 1; // 0�Ԗڂ̗v�f�̓��C���X���b�h�Ɏg�p���邽��1����J�n����
  int args_start = 200000; // 1,000,000��5�Ŋ����200,000�ł���i���C���X���b�h�ł�3����199,999����������j

  // �e�X���b�h���N������
  for (int i = 0; i < 4; i++) {
    // �X���b�h�ŏ������鐔�l�͈̔͂�ݒ肷��
    args[args_index].start = args_start;
    args[args_index].end = (args_start + 199999);

    // �X���b�h���J�n����
    if (pthread_create(&thread_ids[i], NULL, thread_func, &args[args_index]))
    {
      perror("Thread create failed");
      return 1;
    }

    // ���̃X���b�h�̂��߂ɕϐ��̒l�𑝉�������
    args_index += 1;
    args_start += 200000;
  }

  // ���C���X���b�h�ł��f���̎Z�o������
  FindPrimes(3, 199999, args[0].primes_found);

  // �S�ẴX���b�h���I������܂őҋ@����
  for (int j = 0; j < 4; j++)
  {
    pthread_join(thread_ids[j], NULL);
  }


  std::chrono::high_resolution_clock::time_point duration_end = std::chrono::high_resolution_clock::now();
  std::chrono::duration<double, std::milli> duration = (duration_end - duration_start);

  printf("FindPrimes took %f milliseconds to execute\n", duration.count());

  // �e�X���b�h����Z�o�����f�����o�͂���
  printf("The values found:\n");
  for (int k = 0; k < 5; k++)
  {
    for(int n : args[k].primes_found) 
    {
      printf("%d ", n);
    }
  }
  printf("\n");

  return 0; 
}

#ifdef __cplusplus
}
#endif