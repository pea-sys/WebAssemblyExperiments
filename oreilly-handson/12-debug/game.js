let moduleMemory = null;
let moduleExports = null;

var Module = {
  instantiateWasm: function (importObject, successCallback) {
    let mainInstance = null;

    WebAssembly.instantiateStreaming(fetch("main.wasm"), importObject)
      .then((result) => {
        mainInstance = result.instance;
        moduleMemory = mainInstance.exports.memory;

        const sideImportObject = {
          env: {
            memory: moduleMemory,
            _malloc: mainInstance.exports.malloc,
            _free: mainInstance.exports.free,
            _SeedRandomNumberGenerator: mainInstance.exports.SeedRandomNumberGenerator,
            _GetRandomNumber: mainInstance.exports.GetRandomNumber,
            _GenerateCards: generateCards,
            _UpdateTriesTotal: updateTriesTotal,
            _FlipCard: flipCard,
            _RemoveCards: removeCards,
            _LevelComplete: levelComplete,
            _Pause: pause,
          },
        };

        return WebAssembly.instantiateStreaming(fetch("cards.wasm"), sideImportObject);
      })
      .then((sideInstanceResult) => {
        moduleExports = sideInstanceResult.instance.exports;
        successCallback(mainInstance);
      });
    return {};
  },
};

function generateCards(rows, columns, level, tries) {
  document.getElementById("currentLevel").innerText = level;
  updateTriesTotal(tries);

  let html = "";
  for (let row = 0; row < rows; row++) {
    html += "<div>";

    for (let column = 0; column < columns; column++) {
      html += '<div id="' + getCardId(row, column) + '" class="CardBack" onclick="onClickCard(' + row + "," + column + ');"><span></span></div>';
    }

    html += "</div>";
  }

  document.getElementById("cardContainer").innerHTML = html;
}
function updateTriesTotal(tries) {
  document.getElementById("tries").innerText = tries;
}
function getCardId(row, column) {
  return "card_" + row + "_" + column;
}

function flipCard(row, column, cardValue) {
  const card = getCard(row, column);
  card.className = "CardBack";

  if (cardValue !== -1) {
    card.className = "CardFace " + getClassForCardValue(cardValue);
  }
}

function getCard(row, column) {
  return document.getElementById(getCardId(row, column));
}

function getClassForCardValue(cardValue) {
  return "Type" + cardValue;
}

function removeCards(firstCardRow, firstCardColumn, secondCardRow, secondCardColumn) {
  let card = getCard(firstCardRow, firstCardColumn);
  card.style.visibility = "hidden";

  card = getCard(secondCardRow, secondCardColumn);
  card.style.visibility = "hidden";
}

function levelComplete(level, tries, hasAnotherLevel) {
  document.getElementById("levelComplete").style.display = "";
  document.getElementById("levelSummary").innerText = `You've completed level ${level} with ${tries} tries`;

  if (!hasAnotherLevel) {
    document.getElementById("playNextLevel").style.display = "none";
  }
}

function pause(callbackNamePointer, milliseconds) {
  window.setTimeout(function () {
    const name = "_" + getStringFromMemory(callbackNamePointer);

    moduleExports[name]();
  }, milliseconds);
}

function getStringFromMemory(memoryOffset) {
  let returnValue = "";

  const size = 256;
  const bytes = new Uint8Array(moduleMemory.buffer, memoryOffset, size);

  let character = "";
  for (let i = 0; i < size; i++) {
    character = String.fromCharCode(bytes[i]);
    if (character === "\0") {
      break;
    }

    returnValue += character;
  }

  return returnValue;
}

function onClickCard(row, col) {
  moduleExports._CardSelected(row, col);
}

function replayLevel() {
  document.getElementById("levelComplete").style.display = "none";

  moduleExports._ReplayLevel();
}

function playNextLevel() {
  document.getElementById("levelComplete").style.display = "none";

  moduleExports._PlayNextLevel();
}
