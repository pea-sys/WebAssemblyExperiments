const clientData = {
  name: "This is a very long product name to test the validation logic.",
  categoryId: "100",
};

const MAXIMUM_NAME_LENGTH = 50;
const VALID_CATEGORY_IDS = [100, 101];

function initializePage() {
  document.getElementById("name").value = clientData.name;

  const category = document.getElementById("category");
  const count = category.length;
  for (let index = 0; index < count; index++) {
    if (category[index].value === clientData.categoryId) {
      category.selectedIndex = index;
      break;
    }
  }
}

function getSelectedCategoryId() {
  const category = document.getElementById("category");
  const index = category.selectedIndex;
  if (index !== -1) {
    return category[index].value;
  }

  return "0";
}

function setErrorMessage(error) {
  console.log(error);
}

const Module = require("./validate.js");

Module["onRuntimeInitialized"] = function () {
  Promise.all([validateName(clientData.name), validateCategory(clientData.categoryId)])
    .then(() => {
      // 検証を通過した場合はデータを保存する
    })
    .catch((error) => {
      setErrorMessage(error);
    });
};

function createPointers(resolve, reject, returnPointers) {
  const onSuccess = Module.addFunction(function () {
    // 関数ポインタを解放してからPromiseのresolveメソッドを呼び出す
    freePointers(onSuccess, onError);
    resolve();
  }, "v");

  const onError = Module.addFunction(function (errorMessage) {
    // 関数ポインタを解放してからPromiseのrejectメソッドを呼び出す
    freePointers(onSuccess, onError);
    reject(Module.UTF8ToString(errorMessage));
  }, "vi");

  // 呼び出す関数の関数ポインタを返す
  returnPointers.onSuccess = onSuccess;
  returnPointers.onError = onError;
}

function freePointers(onSuccess, onError) {
  Module.removeFunction(onSuccess);
  Module.removeFunction(onError);
}

function validateName(name) {
  return new Promise(function (resolve, reject) {
    const pointers = { onSuccess: null, onError: null };
    createPointers(resolve, reject, pointers);

    Module.ccall("ValidateName", null, ["string", "number", "number", "number"], [name, MAXIMUM_NAME_LENGTH, pointers.onSuccess, pointers.onError]);
  });
}

function validateCategory(categoryId) {
  return new Promise(function (resolve, reject) {
    // 関数ポインタを作成する
    const pointers = { onSuccess: null, onError: null };
    createPointers(resolve, reject, pointers);

    const arrayLength = VALID_CATEGORY_IDS.length;
    const bytesPerElement = Module.HEAP32.BYTES_PER_ELEMENT;
    const arrayPointer = Module._malloc(arrayLength * bytesPerElement);
    Module.HEAP32.set(VALID_CATEGORY_IDS, arrayPointer / bytesPerElement);

    Module.ccall(
      "ValidateCategory",
      null, // 戻り値の型をvoidに設定する
      ["string", "number", "number", "number", "number"],
      [categoryId, arrayPointer, arrayLength, pointers.onSuccess, pointers.onError]
    );

    Module._free(arrayPointer);
  });
}
