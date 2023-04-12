#include <cstdlib>

#ifdef __EMSCRIPTEN__
  #include <emscripten.h>
#endif

#ifdef __cplusplus
extern "C" { // C++�Ƃ��ăr���h����ꍇ�ɃG�N�X�|�[�g�֐��̖��O���ύX����Ă��܂��̂�h��
#endif

  // JavaScript�̃R�[�h����C���|�[�g����֐�
  extern void UpdateHostAboutError(const char* error_message);

#ifdef __EMSCRIPTEN__
  EMSCRIPTEN_KEEPALIVE
#endif
  int ValidateValueProvided(const char* value, const char* error_message)
  {
    // �l��NULL�܂��͐擪�o�C�g��Null�o�C�g�ł���ꍇ�͋�̕����񂪓��͂��ꂽ�Ɣ��ʂ���
    if ((value == NULL) || (value[0] == '\0'))
    {
      UpdateHostAboutError(error_message);
      return 0;
    }

    // ���؂̒ʉ߂������߂�l��Ԃ�
    return 1;
  }

#ifdef __EMSCRIPTEN__
  EMSCRIPTEN_KEEPALIVE
#endif
  int IsIdInArray(char* selected_id, int* valid_ids, int array_length)
  {
    // ������ID���ۑ����ꂽ�z��Ɏw�肵��ID���܂܂�Ă��邩�����؂���
    int id = atoi(selected_id);
    for (int index = 0; index < array_length; index++)
    {
      // �z��Ɋ܂܂�Ă���ID�Ǝw�肵��ID����v���邩���m�F����
      if (valid_ids[index] == id)
      {
        // �w�肳�ꂽID�����������Ƃ������߂�l��Ԃ�
        return 1;
      }
    }

    // �w�肳�ꂽID��������ID�Ƃ��ēo�^����Ă��Ȃ����Ƃ������߂�l��Ԃ�
    return 0;
  }

#ifdef __cplusplus
}
#endif