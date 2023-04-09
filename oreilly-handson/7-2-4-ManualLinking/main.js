function logPrime(prime) {
  console.log(prime.toString());
}

const isPrimeImportObject = {};

WebAssembly.instantiateStreaming(fetch("is_prime.wasm"), isPrimeImportObject)
  .then((module) => {
    const findPrimesImportObject = {
      env: {
        IsPrime: module.instance.exports.IsPrime,
        LogPrime: logPrime,
      },
    };
    return WebAssembly.instantiateStreaming(fetch("find_primes.wasm"), findPrimesImportObject);
  })
  .then((module) => {
    module.instance.exports.FindPrimes(3, 100);
  });
